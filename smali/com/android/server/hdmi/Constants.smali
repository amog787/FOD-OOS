.class final Lcom/android/server/hdmi/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/Constants$LocalActivePort;,
        Lcom/android/server/hdmi/Constants$SystemAudioControlOnPowerOn;,
        Lcom/android/server/hdmi/Constants$AudioDevice;,
        Lcom/android/server/hdmi/Constants$AudioCodec;,
        Lcom/android/server/hdmi/Constants$AbortReason;,
        Lcom/android/server/hdmi/Constants$FeatureOpcode;
    }
.end annotation


# static fields
.field static final ABORT_CANNOT_PROVIDE_SOURCE:I = 0x2

.field static final ABORT_INVALID_OPERAND:I = 0x3

.field static final ABORT_NOT_IN_CORRECT_MODE:I = 0x1

.field static final ABORT_NO_ERROR:I = -0x1

.field static final ABORT_REFUSED:I = 0x4

.field static final ABORT_UNABLE_TO_DETERMINE:I = 0x5

.field static final ABORT_UNRECOGNIZED_OPCODE:I = 0x0

.field public static final ADDR_AUDIO_SYSTEM:I = 0x5

.field public static final ADDR_BROADCAST:I = 0xf

.field public static final ADDR_INTERNAL:I = 0x0

.field public static final ADDR_INVALID:I = -0x1

.field public static final ADDR_PLAYBACK_1:I = 0x4

.field public static final ADDR_PLAYBACK_2:I = 0x8

.field public static final ADDR_PLAYBACK_3:I = 0xb

.field public static final ADDR_RECORDER_1:I = 0x1

.field public static final ADDR_RECORDER_2:I = 0x2

.field public static final ADDR_RECORDER_3:I = 0x9

.field public static final ADDR_RESERVED_1:I = 0xc

.field public static final ADDR_RESERVED_2:I = 0xd

.field public static final ADDR_SPECIFIC_USE:I = 0xe

.field public static final ADDR_TUNER_1:I = 0x3

.field public static final ADDR_TUNER_2:I = 0x6

.field public static final ADDR_TUNER_3:I = 0x7

.field public static final ADDR_TUNER_4:I = 0xa

.field public static final ADDR_TV:I = 0x0

.field public static final ADDR_UNREGISTERED:I = 0xf

.field static final ALWAYS_SYSTEM_AUDIO_CONTROL_ON_POWER_ON:I = 0x0

.field static final AUDIO_CODEC_AAC:I = 0x6

.field static final AUDIO_CODEC_ATRAC:I = 0x8

.field static final AUDIO_CODEC_DD:I = 0x2

.field static final AUDIO_CODEC_DDP:I = 0xa

.field static final AUDIO_CODEC_DST:I = 0xd

.field static final AUDIO_CODEC_DTS:I = 0x7

.field static final AUDIO_CODEC_DTSHD:I = 0xb

.field static final AUDIO_CODEC_LPCM:I = 0x1

.field static final AUDIO_CODEC_MAX:I = 0xf

.field static final AUDIO_CODEC_MP3:I = 0x4

.field static final AUDIO_CODEC_MPEG1:I = 0x3

.field static final AUDIO_CODEC_MPEG2:I = 0x5

.field static final AUDIO_CODEC_NONE:I = 0x0

.field static final AUDIO_CODEC_ONEBITAUDIO:I = 0x9

.field static final AUDIO_CODEC_TRUEHD:I = 0xc

.field static final AUDIO_CODEC_WMAPRO:I = 0xe

.field static final AUDIO_DEVICE_ARC_IN:Ljava/lang/String; = "ARC_IN"

.field static final AUDIO_DEVICE_SPDIF:Ljava/lang/String; = "SPDIF"

.field static final CEC_SWITCH_ARC:I = 0x11

.field static final CEC_SWITCH_AUX:I = 0x14

.field static final CEC_SWITCH_BLUETOOTH:I = 0x12

.field static final CEC_SWITCH_HDMI1:I = 0x1

.field static final CEC_SWITCH_HDMI2:I = 0x2

.field static final CEC_SWITCH_HDMI3:I = 0x3

.field static final CEC_SWITCH_HDMI4:I = 0x4

.field static final CEC_SWITCH_HDMI5:I = 0x5

.field static final CEC_SWITCH_HDMI6:I = 0x6

.field static final CEC_SWITCH_HDMI7:I = 0x7

.field static final CEC_SWITCH_HDMI8:I = 0x8

.field static final CEC_SWITCH_HOME:I = 0x0

.field static final CEC_SWITCH_OPTICAL:I = 0x13

.field static final CEC_SWITCH_PORT_MAX:I = 0x15

.field static final DISABLED:I = 0x0

.field static final ENABLED:I = 0x1

.field static final FALSE:I = 0x0

.field static final INVALID_PHYSICAL_ADDRESS:I = 0xffff

.field static final INVALID_PORT_ID:I = -0x1

.field static final MENU_STATE_ACTIVATED:I = 0x0

.field static final MENU_STATE_DEACTIVATED:I = 0x1

.field static final MESSAGE_ABORT:I = 0xff

.field static final MESSAGE_ACTIVE_SOURCE:I = 0x82

.field static final MESSAGE_CDC_MESSAGE:I = 0xf8

.field static final MESSAGE_CEC_VERSION:I = 0x9e

.field static final MESSAGE_CLEAR_ANALOG_TIMER:I = 0x33

.field static final MESSAGE_CLEAR_DIGITAL_TIMER:I = 0x99

.field static final MESSAGE_CLEAR_EXTERNAL_TIMER:I = 0xa1

.field static final MESSAGE_DECK_CONTROL:I = 0x42

.field static final MESSAGE_DECK_STATUS:I = 0x1b

.field static final MESSAGE_DEVICE_VENDOR_ID:I = 0x87

.field static final MESSAGE_FEATURE_ABORT:I = 0x0

.field static final MESSAGE_GET_CEC_VERSION:I = 0x9f

.field static final MESSAGE_GET_MENU_LANGUAGE:I = 0x91

.field static final MESSAGE_GIVE_AUDIO_STATUS:I = 0x71

.field static final MESSAGE_GIVE_DECK_STATUS:I = 0x1a

.field static final MESSAGE_GIVE_DEVICE_POWER_STATUS:I = 0x8f

.field static final MESSAGE_GIVE_DEVICE_VENDOR_ID:I = 0x8c

.field static final MESSAGE_GIVE_OSD_NAME:I = 0x46

.field static final MESSAGE_GIVE_PHYSICAL_ADDRESS:I = 0x83

.field static final MESSAGE_GIVE_SYSTEM_AUDIO_MODE_STATUS:I = 0x7d

.field static final MESSAGE_GIVE_TUNER_DEVICE_STATUS:I = 0x8

.field static final MESSAGE_IMAGE_VIEW_ON:I = 0x4

.field static final MESSAGE_INACTIVE_SOURCE:I = 0x9d

.field static final MESSAGE_INITIATE_ARC:I = 0xc0

.field static final MESSAGE_MENU_REQUEST:I = 0x8d

.field static final MESSAGE_MENU_STATUS:I = 0x8e

.field static final MESSAGE_PLAY:I = 0x41

.field static final MESSAGE_RECORD_OFF:I = 0xb

.field static final MESSAGE_RECORD_ON:I = 0x9

.field static final MESSAGE_RECORD_STATUS:I = 0xa

.field static final MESSAGE_RECORD_TV_SCREEN:I = 0xf

.field static final MESSAGE_REPORT_ARC_INITIATED:I = 0xc1

.field static final MESSAGE_REPORT_ARC_TERMINATED:I = 0xc2

.field static final MESSAGE_REPORT_AUDIO_STATUS:I = 0x7a

.field static final MESSAGE_REPORT_PHYSICAL_ADDRESS:I = 0x84

.field static final MESSAGE_REPORT_POWER_STATUS:I = 0x90

.field static final MESSAGE_REPORT_SHORT_AUDIO_DESCRIPTOR:I = 0xa3

.field static final MESSAGE_REQUEST_ACTIVE_SOURCE:I = 0x85

.field static final MESSAGE_REQUEST_ARC_INITIATION:I = 0xc3

.field static final MESSAGE_REQUEST_ARC_TERMINATION:I = 0xc4

.field static final MESSAGE_REQUEST_SHORT_AUDIO_DESCRIPTOR:I = 0xa4

.field static final MESSAGE_ROUTING_CHANGE:I = 0x80

.field static final MESSAGE_ROUTING_INFORMATION:I = 0x81

.field static final MESSAGE_SELECT_ANALOG_SERVICE:I = 0x92

.field static final MESSAGE_SELECT_DIGITAL_SERVICE:I = 0x93

.field static final MESSAGE_SET_ANALOG_TIMER:I = 0x34

.field static final MESSAGE_SET_AUDIO_RATE:I = 0x9a

.field static final MESSAGE_SET_DIGITAL_TIMER:I = 0x97

.field static final MESSAGE_SET_EXTERNAL_TIMER:I = 0xa2

.field static final MESSAGE_SET_MENU_LANGUAGE:I = 0x32

.field static final MESSAGE_SET_OSD_NAME:I = 0x47

.field static final MESSAGE_SET_OSD_STRING:I = 0x64

.field static final MESSAGE_SET_STREAM_PATH:I = 0x86

.field static final MESSAGE_SET_SYSTEM_AUDIO_MODE:I = 0x72

.field static final MESSAGE_SET_TIMER_PROGRAM_TITLE:I = 0x67

.field static final MESSAGE_STANDBY:I = 0x36

.field static final MESSAGE_SYSTEM_AUDIO_MODE_REQUEST:I = 0x70

.field static final MESSAGE_SYSTEM_AUDIO_MODE_STATUS:I = 0x7e

.field static final MESSAGE_TERMINATE_ARC:I = 0xc5

.field static final MESSAGE_TEXT_VIEW_ON:I = 0xd

.field static final MESSAGE_TIMER_CLEARED_STATUS:I = 0x43

.field static final MESSAGE_TIMER_STATUS:I = 0x35

.field static final MESSAGE_TUNER_DEVICE_STATUS:I = 0x7

.field static final MESSAGE_TUNER_STEP_DECREMENT:I = 0x6

.field static final MESSAGE_TUNER_STEP_INCREMENT:I = 0x5

.field static final MESSAGE_USER_CONTROL_PRESSED:I = 0x44

.field static final MESSAGE_USER_CONTROL_RELEASED:I = 0x45

.field static final MESSAGE_VENDOR_COMMAND:I = 0x89

.field static final MESSAGE_VENDOR_COMMAND_WITH_ID:I = 0xa0

.field static final MESSAGE_VENDOR_REMOTE_BUTTON_DOWN:I = 0x8a

.field static final MESSAGE_VENDOR_REMOTE_BUTTON_UP:I = 0x8b

.field static final NEVER_SYSTEM_AUDIO_CONTROL_ON_POWER_ON:I = 0x2

.field static final OPTION_MHL_ENABLE:I = 0x67

.field static final OPTION_MHL_INPUT_SWITCHING:I = 0x65

.field static final OPTION_MHL_POWER_CHARGE:I = 0x66

.field static final OPTION_MHL_SERVICE_CONTROL:I = 0x68

.field static final PATH_INTERNAL:I = 0x0

.field static final PLAYBACK_DEVICE_ACTION_ON_ROUTING_CONTROL:Ljava/lang/String; = "ro.hdmi.cec.source.playback_device_action_on_routing_control"

.field static final PLAYBACK_DEVICE_ACTION_ON_ROUTING_CONTROL_NONE:Ljava/lang/String; = "none"

.field static final PLAYBACK_DEVICE_ACTION_ON_ROUTING_CONTROL_WAKE_UP_AND_SEND_ACTIVE_SOURCE:Ljava/lang/String; = "wake_up_and_send_active_source"

.field static final PLAYBACK_DEVICE_ACTION_ON_ROUTING_CONTROL_WAKE_UP_ONLY:Ljava/lang/String; = "wake_up_only"

.field static final POLL_ITERATION_IN_ORDER:I = 0x10000

.field static final POLL_ITERATION_REVERSE_ORDER:I = 0x20000

.field static final POLL_ITERATION_STRATEGY_MASK:I = 0x30000

.field static final POLL_STRATEGY_MASK:I = 0x3

.field static final POLL_STRATEGY_REMOTES_DEVICES:I = 0x1

.field static final POLL_STRATEGY_SYSTEM_AUDIO:I = 0x2

.field static final POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST:Ljava/lang/String; = "ro.hdmi.cec.source.power_state_change_on_active_source_lost"

.field static final POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_NONE:Ljava/lang/String; = "none"

.field static final POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_STANDBY_NOW:Ljava/lang/String; = "standby_now"

.field static final PROPERTY_ARC_SUPPORT:Ljava/lang/String; = "persist.sys.hdmi.property_arc_support"

.field static final PROPERTY_HDMI_CEC_NEVER_ASSIGN_LOGICAL_ADDRESSES:Ljava/lang/String; = "ro.hdmi.property_hdmi_cec_never_assign_logical_addresses"

.field static final PROPERTY_HDMI_CEC_NEVER_CLAIM_PLAYBACK_LOGICAL_ADDRESS:Ljava/lang/String; = "ro.hdmi.property_hdmi_cec_never_claim_playback_logical_address"

.field static final PROPERTY_KEEP_AWAKE:Ljava/lang/String; = "persist.sys.hdmi.keep_awake"

.field static final PROPERTY_LAST_SYSTEM_AUDIO_CONTROL:Ljava/lang/String; = "persist.sys.hdmi.last_system_audio_control"

.field static final PROPERTY_PREFERRED_ADDRESS_AUDIO_SYSTEM:Ljava/lang/String; = "persist.sys.hdmi.addr.audiosystem"

.field static final PROPERTY_PREFERRED_ADDRESS_PLAYBACK:Ljava/lang/String; = "persist.sys.hdmi.addr.playback"

.field static final PROPERTY_PREFERRED_ADDRESS_TV:Ljava/lang/String; = "persist.sys.hdmi.addr.tv"

.field static final PROPERTY_STRIP_AUDIO_TV_NO_SYSTEM_AUDIO:Ljava/lang/String; = "persist.sys.hdmi.property_strip_audio_tv_no_system_audio"

.field static final PROPERTY_SYSTEM_AUDIO_CONTROL_ON_POWER_ON:Ljava/lang/String; = "persist.sys.hdmi.system_audio_control_on_power_on"

.field static final PROPERTY_SYSTEM_AUDIO_DEVICE_ARC_PORT:Ljava/lang/String; = "ro.hdmi.property_sytem_audio_device_arc_port"

.field static final PROPERTY_SYSTEM_AUDIO_MODE_AUDIO_PORT:Ljava/lang/String; = "persist.sys.hdmi.property_sytem_audio_mode_audio_port"

.field static final PROPERTY_SYSTEM_AUDIO_MODE_MUTING_ENABLE:Ljava/lang/String; = "ro.hdmi.property_system_audio_mode_muting_enable"

.field static final PROPERTY_WAKE_ON_HOTPLUG:Ljava/lang/String; = "ro.hdmi.wake_on_hotplug"

.field static final RECORDING_TYPE_ANALOGUE_RF:I = 0x2

.field static final RECORDING_TYPE_DIGITAL_RF:I = 0x1

.field static final RECORDING_TYPE_EXTERNAL_PHYSICAL_ADDRESS:I = 0x3

.field static final RECORDING_TYPE_OWN_SOURCE:I = 0x4

.field static final ROUTING_PATH_TOP_MASK:I = 0xf000

.field static final ROUTING_PATH_TOP_SHIFT:I = 0xc

.field static final SYSTEM_AUDIO_STATUS_OFF:I = 0x0

.field static final SYSTEM_AUDIO_STATUS_ON:I = 0x1

.field static final TRUE:I = 0x1

.field static final UNKNOWN_VENDOR_ID:I = 0xffffff

.field static final UNKNOWN_VOLUME:I = -0x1

.field static final USE_LAST_STATE_SYSTEM_AUDIO_CONTROL_ON_POWER_ON:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method
