## Overview

In intelligent voice control systems, audio playback is a complex scenario involving multiple operations:

* Sound Sources: Local files, cloud streams, Bluetooth music, phone calls, etc.
* Sound Types: Including local prompt tones, cloud-distributed TTS (Text-To-Speech), cloud-distributed music links, Bluetooth music playback, and Bluetooth call types; each sound type has slightly different handling methods.
* Diverse Behaviors: Users will initiate various playback control requests, such as volume control, pause/resume playback, and mute control.
* Arbitration Management: Determine the playback priority when multiple playback requests are generated simultaneously.

Therefore, a player control component is needed to provide a higher-level abstraction on top of the original player, which should implement more complex logical control based on application scenarios and further abstract the player interfaces to improve developer efficiency.

### Playback Control Protocol
The playback control component includes multiple sound types:

* System sounds: Including system prompt tones and cloud-based TTS (Text-To-Speech) sounds.
* Music: Including songs played locally or from the cloud.
* Bluetooth music playback: Including songs played via Bluetooth.
* Bluetooth calls: Including answering and making phone calls.

Smart audio encapsulates a control layer (interfaces prefixed with smtaudio_ in smart_audio.c). Any playback type integrated into the smart audio playback control must implement the following properties, which are invoked by the control layer.

* const char *name;                                             |Audio source name
* int         prio;                                             |Audio source priority (smaller values indicate higher priority; minimum value is 0)
* int         id;                                               |Audio source ID
* msp_dlist_t     node;                                             | Audio source linked list node
* int         status;                                           | Audio source status (real-time updated status)
* int (*init)(void);                                            |Audio source initialization
* int (*deinit)(void);                                          |Audio source deinitialization
* int (*start)(const char *url, uint64_t seek_time, int resume);|Start playing the audio source
* int (*pause)(void);                                           |Pause the audio source
* int (*stop)(void);                                            |Stop the audio source
* int (*resume)(void);                                          |Resume the audio source
* int (*vol_get)(void);                                         |Get current volume
* int (*vol_set)(int vol);                                      |Set volume
* int (*vol_up)(int vol);                                       |Increase volume
* int (*vol_down)(int vol);                                     |Decrease volume
* void (*callback)(int type, smtaudio_player_evtid_t evt_id);   |Callback to notify the playback controller of events such as start, pause, and stop of the audio source

Each playback type has a priority (prio) attribute. In the module, Bluetooth calls have the highest priority (prio = 0), followed by system sounds (prio = 1), and finally Bluetooth music and online music (prio = 2). This priority mechanism is specifically reflected in the following rules:

* When attempting to play an audio source, if a higher-priority audio source is currently playing, the pending audio source will be temporarily added to the delay play list. It will be retrieved from the delay play list and played after the higher-priority audio source finishes playing.
* When attempting to play an audio source, if a lower-priority audio source is playing, the currently playing audio source will be interrupted, added to the resume play list, and the pending audio source will start playing. After the pending audio source finishes, the interrupted one will be retrieved from the resume play list and resume playing.
* When music (Bluetooth or online music) is playing: If a system sound needs to be played at this time, the music will be "interrupted" (paused), and the system sound will play first. After the system sound finishes, a decision will be made on whether to resume the music playback based on the situation.
* For audio sources with the same priority, a new audio source will interrupt the currently playing one, and the interrupted audio source cannot be resumed.

### Minimum Playback Volume

The playback control component includes a design for minimum playback volume. This is based on the consideration that when a user wakes up the device using a wake word, it indicates the user wishes to engage in voice interaction with the device. Therefore, regardless of whether the current volume is 0, the user should be able to hear the device's response. 
The application layer needs to pass the minimum playback volume to the playback control component during initialization. When the playback control component plays sound, it will check if the current volume is 0 — if it is, the minimum playback volume will be used to ensure the user can hear the sound.
## Component Installation
```bash
yoc init
yoc install smart_audio
```

## Configuration
None.

## Interface List

| Function | Description |
| :--- | :--- |
| smtaudio_init |  Initialize playback control |
| smtaudio_vol_up |  Increase volume |
| smtaudio_vol_down | Decrease volume              |
| smtaudio_vol_set |  Set volume to a fixed value |
| smtaudio_vol_get |  Get current volume          |
| smtaudio_pause | Pause music playback          |
| smtaudio_resume | Resume music playback          |
| smtaudio_mute | Enter/exit mute and mic-off state |
| smtaudio_start      | Start playing a piece of audio      |
| smtaudio_stop | Stop current audio playback      |
| smtaudio_set_speed | Set playback speed |
| smtaudio_get_state | Check current playback control state |
| smtaudio_lpm | Enter/exit low-power consumption state |

## Detailed Interface Description

### media_evt

`typedef void (*audio_evt_t)(int type, smtaudio_player_evtid_t evt_id);`

- Function Description:
   - Callback function for player event handling.

- Parameters:
   - `type`: Audio type
   - `evt_id`: Player event

- Return Value:
   - None.

### smtaudio_init

`int8_t smtaudio_init(audio_evt_t audio_evt_cb);`

- Function Description:
   - Initializes the playback control component.

- Parameters:
   - `audio_evt_cb`: Callback function for playback events provided to the user.

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

### smtaudio_vol_up
`int8_t smtaudio_vol_up(int16_t vol);`

- Function Description:
   - Increase the volume.

- Parameters:
   - `vol`: The amount by which to increase the volume.

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

### smtaudio_vol_down
`int8_t smtaudio_vol_down(int16_t vol);`

- Function Description:
   - Decrease the volume.

- Parameters:
   - `vol`: The amount by which to decrease the volume.

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

### smtaudio_vol_set
`int8_t smtaudio_vol_set(int16_t vol);`

- Function Description:
   - Set the volume to a fixed value.

- Parameters:
   - `vol`: The volume level to be set.

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

### smtaudio_vol_get
`int8_t smtaudio_vol_get(void);`

- Function Description:
   - Set the volume to a fixed value.

- Parameters:
   - None.

- Return Values:
   - The obtained volume value, ranging from 0 to 100.

### smtaudio_pause
`int8_t smtaudio_pause(void);`

- Function Description:
   - Pause current playback.

- Parameters:
  - None.

- Return Values:
   - 0: Pause successful.
   - -1: Pause failed.

### smtaudio_resume
`int8_t smtaudio_resume(void);`

- Function Description:
   - Resume the paused music; if no music is currently paused, return directly.

- Parameters:
  - None.

- Return Values:
   - 0: Resume successful.
   - -1: Resume failed.

### smtaudio_mute
`int8_t smtaudio_mute(void);`

- Function Description:
   - Enter/exit the mute and mic-off state. The first call enters the mute and mic-off state, and the second call exits the mute and mic-off state.

- Parameters:
  - None.

- Return Values:
   - 0: Operation successful.
   - -1: Operation failed.

### smtaudio_start
`int8_t smtaudio_start(int type, char *url, uint64_t seek_time, uint8_t resume);`

- Function Description:
   - Start playing a piece of audio.

- Parameters:
   - `type`: Audio type.
   - `url`：Address of the audio content.
   - `seek_time`：Playback start position; 0 means playing from the beginning.
   - `resume`：Whether to resume the interrupted music after playback ends.

- Return Values:
   - 0: Playback started successfully.
   - -1: Failed to start playback.

### smtaudio_stop
`int8_t smtaudio_stop(int type);`

- Function Description:
   - Stop the current audio playback.

- Parameters:
   - `type`: Audio type

- Return Values:
   - 0: Playback stopped successfully.
   - -1: Failed to stop playback.
### smtaudio_set_speed
`int smtaudio_set_speed(float speed)`

- Function Description:
   - Set the playback speed.

- Parameters:
   - `speed`: Playback speed, ranging from 0.5 to 2.0.

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

### smtaudio_get_state
`smtaudio_state_t smtaudio_get_state(void);`

- Function Description:
   - Get the playback control status.

- Parameters:
   - None.

- Return Values:
   - The current playback control status, with specific descriptions as follows:
```c
// Changes in the SYSTEM state will not affect the SMTAUDIO_STATE; only the MUSIC state will change it.
typedef enum {
    SMTAUDIO_STATE_PLAYING,      // Playing state
    SMTAUDIO_STATE_PAUSE,        // Paused state
    SMTAUDIO_STATE_MUTE,         // Muted and mic-disabled state; no response to any buttons or voice commands except the mic-disable button
    SMTAUDIO_STATE_STOP,          // Stopped state
    SMTAUDIO_STATE_NUM
} smtaudio_state_t;
```

### smtaudio_lpm
`int8_t smtaudio_lpm(uint8_t state);`

- Function Description:
   - Enter/exit low-power consumption state.

- Parameters:
   - `state`: Low-power consumption state; 1 - enter low-power consumption, 0 - exit low-power consumption

- Return Values:
   - 0: Initialization successful.
   - -1: Initialization failed.

## Example

```c
// Callback function, which will be registered in the playback control component to receive playback events
static void media_evt(int type, smtaudio_player_evtid_t evt_id)
{
  switch (evt_id) {
        case SMTAUDIO_PLAYER_EVENT_START:
            /* Playback start event */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_ERROR:
            /* Playback error event */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_STOP:
            /* Playback end event */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_PAUSE:
            /* Playback pause event */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_RESUME:
            /* Playback resume event */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_UNDER_RUN:
            /* Playback buffer underrun event (insufficient buffer data) */
            ...
            break;
        case SMTAUDIO_PLAYER_EVENT_OVER_RUN:
            /* Playback buffer overrun event (buffer data overflow) */
            ...
            break;
        default:
            break;
    }
}

void main()
{
    ...;
    /* Initialize the playback control component  */
    smtaudio_init(media_evt);
    ...
    /* Play the network stream using system sound */
    smtaudio_start(MEDIA_SYSTEM,
                  "https://www.kozco.com/tech/LRMonoPhase4.mp3", 0, 1);
    ...
    /* Get the current state of the playback control component and control the volume */
    if (SMTAUDIO_STATE_MUTE != smtaudio_get_state()) {
        smtaudio_vol_up(10);
    }
}
```

## Diagnostic Error Codes
None.

## Runtime Resources

None.

## Dependent Resources
  - csi
  - rhino
  - aos
  - kv
  - av

## Component References
None.