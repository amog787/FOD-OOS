.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioDeviceArray;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;,
        Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$VolumeGroupState;,
        Lcom/android/server/audio/AudioService$BtProfileConnectionState;,
        Lcom/android/server/audio/AudioService$ConnectionState;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$RoleObserver;,
        Lcom/android/server/audio/AudioService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACTION_NET_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final AUDIO_HAL_SERVICE_PREFIX:Ljava/lang/String; = "android.hardware.audio"

.field public static final BECOMING_NOISY_DELAY_MS:I = 0x3e8

.field private static final CHECK_MODE_FOR_UID_PERIOD_MS:I = 0xbb8

.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field protected static final DEBUG_AP:Z = false

.field protected static final DEBUG_DEVICES:Z = true

.field protected static final DEBUG_MODE:Z = true

.field protected static final DEBUG_SCO:Z = true

.field protected static final DEBUG_VOL:Z = true

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static final KEY_ERROR:I = -0x2

.field public static final King_of_Glory_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field static final LOG_NB_EVENTS_DEVICE_CONNECTION:I = 0x1e

.field static final LOG_NB_EVENTS_DYN_POLICY:I = 0xa

.field static final LOG_NB_EVENTS_FORCE_USE:I = 0x14

.field static final LOG_NB_EVENTS_PHONE_STATE:I = 0x14

.field static final LOG_NB_EVENTS_VOLUME:I = 0x28

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static final MIN_ALARM_ATTENUATION_NON_PRIVILEGED_DB:F = -36.0f

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x15

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_MICROPHONE_MUTE:I = 0x1e

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CALL_DEVICE_CHANGE:I = 0x24

.field private static final MSG_CALL_MODE_CHECK:I = 0x26

.field private static final MSG_CHECK_MODE_FOR_UID:I = 0x1f

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xb

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0xc

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0xd

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x64

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x17

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x13

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x18

.field private static final MSG_HDMI_VOLUME_CHECK:I = 0x1c

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x14

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x16

.field private static final MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS:I = 0x1b

.field private static final MSG_OTA_WIDEVINE_PROVISION:I = 0x29

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x11

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0xe

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PERSIST_VOLUME_GROUP:I = 0x2

.field private static final MSG_PER_SPEAKER_MUSIC_VOLUME:I = 0x20

.field private static final MSG_PLAYBACK_CONFIG_CHANGE:I = 0x1d

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_SEND_GRADIENTVOL:I = 0x23

.field private static final MSG_SEND_HEADSETHOOK:I = 0x22

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_STREAM_VOLUME:I = 0x1a

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SW_DAP_CLOSE:I = 0x27

.field private static final MSG_SYSTEM_READY:I = 0x10

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0xf

.field private static final MSG_UNMUTE_STREAM:I = 0x12

.field private static final MSG_UPDATE_RINGER_MODE:I = 0x19

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PHONE_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final PHONE_MODE_COMMUTICATION_ACTIVE_MS_MAX:I = 0x2bf20

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AS.AudioService"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VOL_ADJUST_END:I = 0x2

.field private static final VOL_ADJUST_NORMAL:I = 0x0

.field private static final VOL_ADJUST_START:I = 0x1

.field private static final WIDEVINE_MDM_DB:Ljava/lang/String; = "send_widevine_level_mdm"

.field private static final mMetricsId:Ljava/lang/String; = "audio.service."

.field protected static mStreamVolumeAlias:[I

.field static final sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sDeviceVolumeBehaviorSupportedDeviceOutSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sIndependentA11yVolume:Z

.field private static sStreamOverrideDelayMs:I

.field private static final sVolumeGroupStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/audio/AudioService$VolumeGroupState;",
            ">;"
        }
    .end annotation
.end field

.field static final sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final AUDIO_SOURCE_CNT:I

.field private final AUDIO_STREAM_PUBLIC_CNT:I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAssistantUid:I

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAutoPlayFlag:Z

.field private mAutoPlayMusic:I

.field private volatile mAvrcpAbsVolSupported:Z

.field private mBootCompelet:Z

.field private mBtScoVolChange:Z

.field private mCallInfoBroadcast:I

.field private mCameraSoundForced:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentImeUid:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field mFullVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGradientVol:I

.field private mGradientingMusicDev:I

.field private mGradientingVol:Z

.field private final mHasVibrator:Z

.field private mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

.field private mHdmiCecSink:Z

.field private mHdmiCecVolumeControlEnabled:Z

.field private final mHdmiClientLock:Ljava/lang/Object;

.field private mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHeadsetNotication:I

.field private mInputMethodServiceUid:I

.field private final mInputMethodServiceUidLock:Ljava/lang/Object;

.field private mIsCallScreeningModeSupported:Z

.field private final mIsSingleVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMicMuteFromApi:Z

.field private mMicMuteFromRestrictions:Z

.field private mMicMuteFromSwitch:Z

.field private mMicMuteFromSystemCached:Z

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

.field private mNewIndex:I

.field private mNm:Landroid/app/NotificationManager;

.field public mOnePlusFixedRingerMode:I

.field public mOnePlusMaxRingVolumeIndex:I

.field public mOnePlusMinRingVolumeIndex:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPerScoMediaVolume:I

.field private mPerSpeakerMediaVolume:I

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPrescaleAbsoluteVolume:[F

.field private mPrevVolDirection:I

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

.field private mRttEnabled:Z

.field final mSafeMediaVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:I

.field private final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

.field private mSingleStatus:Z

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSupportedSystemUsages:[I

.field private final mSupportedSystemUsagesLock:Ljava/lang/Object;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private mVolBeforeGradienting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mZenModeAffectedStreams:I

.field private mabPhonestateComActiveMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 445
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 470
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 551
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 566
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Integer;

    .line 568
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 569
    const/high16 v5, 0x40000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 570
    const/high16 v5, 0x80000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 571
    const/high16 v5, 0x20000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 567
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sDeviceVolumeBehaviorSupportedDeviceOutSet:Ljava/util/Set;

    .line 640
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 641
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 642
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 6263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    .line 6264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6265
    sget-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6266
    sget-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6267
    sget-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6268
    sget-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6269
    sget-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6337
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    .line 8903
    sput-boolean v4, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8958
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "wired/A2DP/hearing aid device connection"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8961
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x14

    const-string v2, "force use (logged before setForceUse() is executed)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8965
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x28

    const-string/jumbo v2, "volume changes (logged when command received by AudioService)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8971
    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0x1e
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x40
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 819
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    .line 820
    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v1

    .line 819
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;)V

    .line 821
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioSystem"    # Lcom/android/server/audio/AudioSystemAdapter;
    .param p3, "systemServer"    # Lcom/android/server/audio/SystemServerAdapter;

    .line 824
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 298
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 369
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mSingleStatus:Z

    .line 398
    iput v9, v1, Lcom/android/server/audio/AudioService;->mMode:I

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 405
    iput v9, v1, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 407
    iput v9, v1, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 409
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 410
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 412
    iput v0, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    .line 413
    iput v9, v1, Lcom/android/server/audio/AudioService;->mGradientVol:I

    .line 414
    iput v9, v1, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    .line 415
    iput v9, v1, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    .line 416
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 418
    const/16 v2, 0xc

    iput v2, v1, Lcom/android/server/audio/AudioService;->AUDIO_STREAM_PUBLIC_CNT:I

    .line 419
    const/16 v3, 0xb

    iput v3, v1, Lcom/android/server/audio/AudioService;->AUDIO_SOURCE_CNT:I

    .line 421
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mAutoPlayFlag:Z

    .line 425
    iput v9, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    .line 426
    iput v9, v1, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 427
    const/16 v4, 0x3e8

    iput v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 428
    iput v0, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 429
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    .line 433
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    .line 435
    iput v0, v1, Lcom/android/server/audio/AudioService;->mNewIndex:I

    .line 503
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 517
    new-array v5, v2, [I

    fill-array-data v5, :array_1

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 531
    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 576
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 585
    new-instance v2, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v2, v1}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 611
    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 615
    iput v9, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 617
    iput v9, v1, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 646
    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v2, v1, v4}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 654
    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v2, v1, v4}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 670
    iput v9, v1, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 673
    iput v0, v1, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 677
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 678
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 682
    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 687
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Integer;

    .line 688
    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 689
    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    .line 690
    const/high16 v6, 0x40000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v5, v11

    .line 691
    const/high16 v6, 0x80000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x3

    aput-object v6, v5, v12

    .line 692
    const/high16 v6, 0x200000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 687
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    .line 694
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    .line 698
    new-instance v2, Ljava/util/HashSet;

    new-array v5, v10, [Ljava/lang/Integer;

    .line 699
    const/high16 v6, 0x8000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    .line 703
    iput-boolean v10, v1, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 705
    iput v9, v1, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 717
    new-array v2, v12, [F

    fill-array-data v2, :array_3

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    .line 725
    sget-object v2, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 730
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 733
    iput v0, v1, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    .line 734
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    .line 752
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    .line 753
    new-array v2, v10, [I

    const/16 v5, 0x11

    aput v5, v2, v9

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    .line 783
    new-instance v2, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v2, v1}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 810
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    .line 2990
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2992
    new-instance v2, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v2, v1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    .line 3587
    iput v9, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4694
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    .line 8603
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 8605
    iput v9, v1, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 8620
    new-instance v2, Ljava/util/HashSet;

    new-array v5, v7, [Ljava/lang/Integer;

    .line 8621
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 8622
    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 8626
    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 8628
    const/high16 v6, 0x4000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 8621
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 8798
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    .line 8803
    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8824
    new-instance v2, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    invoke-direct {v2, v1, v4}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    .line 8827
    new-instance v2, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    invoke-direct {v2, v1, v4}, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    .line 8952
    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const/16 v4, 0x14

    const-string/jumbo v5, "phone state (logged after successful call to AudioSystem.setPhoneState(int, int))"

    invoke-direct {v2, v4, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8968
    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const/16 v4, 0xa

    const-string v5, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v2, v4, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 9864
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 9893
    new-instance v2, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v2, v1}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 10536
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 10641
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 10643
    iput v9, v1, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 825
    iput-object v8, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 827
    const-string v2, "appops"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 829
    move-object/from16 v13, p2

    iput-object v13, v1, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 830
    move-object/from16 v14, p3

    iput-object v14, v1, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 832
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 834
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 836
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 837
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 839
    const-string/jumbo v2, "power"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/os/PowerManager;

    .line 840
    .local v15, "pm":Landroid/os/PowerManager;
    const-string v2, "handleAudioEvent"

    invoke-virtual {v15, v10, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 842
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/audio/SoundEffectsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 844
    const-string/jumbo v2, "vibrator"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 845
    if-nez v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :goto_0
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 851
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 852
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 854
    .local v2, "numStreamTypes":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "streamType":I
    :goto_1
    if-ltz v5, :cond_3

    .line 855
    nop

    .line 856
    invoke-static {v5}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v6

    .line 858
    .local v6, "attr":Landroid/media/AudioAttributes;
    invoke-static {v6}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 859
    .local v3, "maxVolume":I
    if-eq v3, v0, :cond_1

    .line 860
    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v3, v16, v5

    .line 862
    :cond_1
    invoke-static {v6}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 863
    .local v4, "minVolume":I
    if-eq v4, v0, :cond_2

    .line 864
    sget-object v17, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aput v4, v17, v5

    .line 854
    .end local v3    # "maxVolume":I
    .end local v4    # "minVolume":I
    .end local v6    # "attr":Landroid/media/AudioAttributes;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    const/16 v3, 0xb

    const/16 v4, 0xa

    goto :goto_1

    .line 869
    .end local v2    # "numStreamTypes":I
    .end local v5    # "streamType":I
    :cond_3
    const-string/jumbo v2, "ro.config.vc_call_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 870
    .local v6, "maxCallVolume":I
    if-eq v6, v0, :cond_4

    .line 871
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v6, v2, v9

    .line 874
    :cond_4
    const-string/jumbo v2, "ro.config.vc_call_vol_default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 875
    .local v5, "defaultCallVolume":I
    if-eq v5, v0, :cond_5

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v9

    if-gt v5, v2, :cond_5

    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v9

    if-lt v5, v2, :cond_5

    .line 878
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v2, v9

    goto :goto_2

    .line 880
    :cond_5
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v9

    mul-int/2addr v3, v12

    div-int/2addr v3, v7

    aput v3, v2, v9

    .line 884
    :goto_2
    const-string/jumbo v2, "ro.config.media_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 885
    .local v4, "maxMusicVolume":I
    if-eq v4, v0, :cond_6

    .line 886
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v4, v2, v12

    .line 889
    :cond_6
    const-string/jumbo v2, "ro.config.media_vol_default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 890
    .local v3, "defaultMusicVolume":I
    if-eq v3, v0, :cond_7

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v12

    if-gt v3, v2, :cond_7

    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v12

    if-lt v3, v2, :cond_7

    .line 893
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v3, v2, v12

    goto :goto_3

    .line 895
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 896
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v17, v17, v12

    div-int/lit8 v17, v17, 0x4

    aput v17, v2, v12

    goto :goto_3

    .line 907
    :cond_8
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v17, v17, v12

    div-int/lit8 v17, v17, 0x2

    aput v17, v2, v12

    .line 914
    :goto_3
    const-string/jumbo v2, "ro.config.alarm_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 915
    .local v2, "maxAlarmVolume":I
    if-eq v2, v0, :cond_9

    .line 916
    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v2, v17, v7

    .line 919
    :cond_9
    const-string/jumbo v11, "ro.config.alarm_vol_default"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 920
    .local v11, "defaultAlarmVolume":I
    if-eq v11, v0, :cond_a

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v12, v18, v7

    if-gt v11, v12, :cond_a

    .line 922
    sget-object v12, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v11, v12, v7

    goto :goto_4

    .line 925
    :cond_a
    sget-object v12, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v18, v18, v7

    mul-int/lit8 v18, v18, 0x6

    div-int/lit8 v18, v18, 0x7

    aput v18, v12, v7

    .line 929
    :goto_4
    const-string/jumbo v12, "ro.config.system_vol_steps"

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 930
    .local v12, "maxSystemVolume":I
    if-eq v12, v0, :cond_b

    .line 931
    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v12, v18, v10

    .line 934
    :cond_b
    const-string/jumbo v7, "ro.config.system_vol_default"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 935
    .local v7, "defaultSystemVolume":I
    if-eq v7, v0, :cond_c

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v10

    if-gt v7, v0, :cond_c

    .line 937
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v7, v0, v10

    goto :goto_5

    .line 940
    :cond_c
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v19, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v19, v19, v10

    aput v19, v0, v10

    .line 944
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 946
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 948
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    .line 950
    move/from16 v19, v7

    .end local v7    # "defaultSystemVolume":I
    .local v19, "defaultSystemVolume":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    .line 951
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 952
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v21, 0x8

    const/16 v22, 0x2

    const/16 v23, 0x4

    .line 956
    if-eqz v7, :cond_d

    .line 957
    const/16 v24, 0xb

    goto :goto_6

    :cond_d
    move/from16 v24, v9

    :goto_6
    new-instance v10, Ljava/lang/String;

    const-string v9, "AudioService ctor"

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x0

    .line 952
    move-object/from16 v20, v0

    move-object/from16 v25, v10

    invoke-static/range {v20 .. v26}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 961
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "audio_safe_volume_state"

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 966
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e00ae

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v9, 0xa

    mul-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 969
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x11100f9

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 972
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v1}, Lcom/android/server/audio/AudioDeviceBroker;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 974
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 978
    const-string v9, "AS.AudioService"

    const/4 v10, 0x0

    invoke-direct {v1, v10, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 980
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 981
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->initVolumeGroupStates()V

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 992
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v10, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v16, 0x4

    aget v10, v10, v16

    invoke-direct {v0, v8, v10}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 995
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move/from16 v16, v2

    .end local v2    # "maxAlarmVolume":I
    .local v16, "maxAlarmVolume":I
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v0, v10, v2}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 1000
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/16 v2, 0xb2

    const/4 v10, 0x0

    aput v2, v0, v10

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1002
    :try_start_0
    new-instance v0, Lcom/android/server/audio/OpAudioMonitor;

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/server/audio/OpAudioMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    .line 1003
    const-string/jumbo v0, "mAudioMonitor new success!"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    goto :goto_7

    .line 1004
    :catchall_0
    move-exception v0

    .line 1005
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "mAudioMonitor new ERROR!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_e
    :goto_7
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1013
    invoke-static {}, Landroid/media/AudioSystem;->isCallScreeningModeSupported()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    .line 1017
    const/4 v9, 0x0

    iput v9, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v9}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1021
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v9, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1024
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1025
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1027
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    const-string v9, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v9, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v9, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1032
    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v9, "ro.audio.monitorRotation"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 1036
    if-eqz v9, :cond_f

    .line 1037
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v9, v10}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1040
    :cond_f
    const-string v9, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string v9, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, 0x0

    aput v2, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1045
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    :cond_10
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move/from16 v21, v3

    .end local v3    # "defaultMusicVolume":I
    .local v21, "defaultMusicVolume":I
    move-object v3, v9

    move v9, v4

    .end local v4    # "maxMusicVolume":I
    .local v9, "maxMusicVolume":I
    move-object v4, v10

    move v10, v5

    .end local v5    # "defaultCallVolume":I
    .local v10, "defaultCallVolume":I
    move-object v5, v0

    move/from16 v22, v6

    .end local v6    # "maxCallVolume":I
    .local v22, "maxCallVolume":I
    move-object/from16 v6, v18

    move/from16 v18, v19

    move/from16 v19, v7

    .end local v7    # "cameraSoundForced":Z
    .local v18, "defaultSystemVolume":I
    .local v19, "cameraSoundForced":Z
    move-object/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1052
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v2}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1053
    const-class v2, Landroid/media/AudioManagerInternal;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1055
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 1057
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 1060
    :cond_11
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 1061
    .local v2, "preScale":[F
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130003

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1064
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130004

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    aput v3, v2, v5

    .line 1067
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130005

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 1070
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v4, v2

    if-ge v3, v4, :cond_13

    .line 1071
    const/4 v4, 0x0

    aget v5, v2, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_12

    aget v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_12

    .line 1072
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    aget v5, v2, v3

    aput v5, v4, v3

    .line 1070
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1075
    .end local v3    # "i":I
    :cond_13
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x6
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method private GetAppProcessName(I)Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I

    .line 5250
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5251
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 5252
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 5253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5254
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 5255
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    .line 5256
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 5258
    :cond_1
    const-string/jumbo v2, "unknow"

    return-object v2
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    return-void
.end method

.method static synthetic access$10102(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # I

    .line 216
    invoke-direct/range {p0 .. p8}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # Z

    .line 216
    invoke-direct/range {p0 .. p7}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$10902(Lcom/android/server/audio/AudioService;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # [I

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    return v0
.end method

.method static synthetic access$11102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    return p1
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-object v0
.end method

.method static synthetic access$11308(Lcom/android/server/audio/AudioService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$11800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 216
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 216
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mNewIndex:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 216
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateRingerModeServiceInt()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckPhoneMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .line 216
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/OpAudioMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onObserveDevicesForAllStreams()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/util/List;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onPlaybackConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$7602(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHeadsetProfileStatus()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Z

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/server/audio/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSingleStatus:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSingleStatus:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method private addAudioSystemDeviceOutToFixedVolumeDevices(I)V
    .locals 2
    .param p1, "audioSystemDeviceOut"    # I

    .line 10722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding DeviceType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to mFixedVolumeDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10725
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10726
    return-void
.end method

.method private addAudioSystemDeviceOutToFullVolumeDevices(I)V
    .locals 2
    .param p1, "audioSystemDeviceOut"    # I

    .line 10738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding DeviceType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to mFullVolumeDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10741
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10742
    return-void
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 20
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "hasModifyAudioSettings"    # Z
    .param p8, "keyEventMode"    # I

    .line 2179
    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v7, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volControlStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    if-eqz p1, :cond_0

    .line 2184
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2186
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 2184
    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    .line 2183
    :cond_0
    move/from16 v14, p6

    .line 2189
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->notifyExternalVolumeController(I)Z

    move-result v15

    .line 2191
    .local v15, "hasExternalVolumeController":Z
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.adjustSuggestedStreamVolume"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 2192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 2193
    invoke-virtual {v0, v1, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 2194
    invoke-virtual {v0, v1, v13}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    .line 2195
    if-lez p1, :cond_1

    .line 2196
    const-string/jumbo v2, "up"

    goto :goto_1

    :cond_1
    const-string v2, "down"

    .line 2195
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EXTERNAL:Landroid/media/MediaMetrics$Key;

    .line 2197
    if-eqz v15, :cond_2

    .line 2198
    const-string/jumbo v2, "yes"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "no"

    .line 2197
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 2199
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 2200
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2202
    if-eqz v15, :cond_3

    .line 2203
    return-void

    .line 2207
    :cond_3
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2208
    :try_start_0
    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volControlStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iget-boolean v0, v10, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 2214
    iget v0, v10, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .local v0, "streamType":I
    goto :goto_7

    .line 2219
    .end local v0    # "streamType":I
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v3, 0x13e

    const/4 v4, 0x0

    aput v3, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2220
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/String;

    const-string v3, "android"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2221
    invoke-direct {v10, v11}, Lcom/android/server/audio/AudioService;->getActiveStreamOemType(I)I

    move-result v0

    .local v0, "maybeActiveStreamType":I
    goto :goto_3

    .line 2223
    .end local v0    # "maybeActiveStreamType":I
    :cond_5
    invoke-direct {v10, v11}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0    # "maybeActiveStreamType":I
    goto :goto_3

    .line 2227
    .end local v0    # "maybeActiveStreamType":I
    :cond_6
    invoke-direct {v10, v11}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 2232
    .restart local v0    # "maybeActiveStreamType":I
    :goto_3
    if-eq v0, v2, :cond_8

    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    goto :goto_4

    .line 2236
    :cond_7
    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    .local v3, "activeForReal":Z
    goto :goto_5

    .line 2234
    .end local v3    # "activeForReal":Z
    :cond_8
    :goto_4
    invoke-direct {v10, v0, v4}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    .line 2238
    .restart local v3    # "activeForReal":Z
    :goto_5
    if-nez v3, :cond_a

    iget v4, v10, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    goto :goto_6

    .line 2241
    :cond_9
    iget v4, v10, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    move v0, v4

    .local v4, "streamType":I
    goto :goto_7

    .line 2239
    .end local v4    # "streamType":I
    :cond_a
    :goto_6
    move v4, v0

    .line 2244
    .end local v3    # "activeForReal":Z
    .local v0, "streamType":I
    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v9

    .line 2248
    .local v9, "isMute":Z
    invoke-direct {v10, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2249
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v1, v0

    .line 2252
    .local v8, "resolvedStream":I
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_b

    if-eq v8, v2, :cond_b

    .line 2254
    and-int/lit8 v1, v7, -0x5

    move v7, v1

    .line 2260
    .end local p3    # "flags":I
    .local v7, "flags":I
    :cond_b
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v8, v7, v9}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v10, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-nez v1, :cond_c

    .line 2262
    const/4 v1, 0x0

    .line 2263
    .end local p1    # "direction":I
    .local v1, "direction":I
    and-int/lit8 v2, v7, -0x5

    .line 2264
    .end local v7    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v7, v2, -0x11

    .line 2265
    .end local v2    # "flags":I
    .restart local v7    # "flags":I
    const-string v2, "AS.AudioService"

    const-string v3, "Volume controller suppressed adjustment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v1

    move/from16 v17, v7

    goto :goto_8

    .line 2268
    .end local v1    # "direction":I
    .restart local p1    # "direction":I
    :cond_c
    move/from16 v16, p1

    move/from16 v17, v7

    .end local v7    # "flags":I
    .end local p1    # "direction":I
    .local v16, "direction":I
    .local v17, "flags":I
    :goto_8
    move-object/from16 v1, p0

    move v2, v0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v18, v8

    .end local v8    # "resolvedStream":I
    .local v18, "resolvedStream":I
    move/from16 v8, p7

    move/from16 v19, v9

    .end local v9    # "isMute":Z
    .local v19, "isMute":Z
    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 2270
    return-void

    .line 2244
    .end local v0    # "streamType":I
    .end local v16    # "direction":I
    .end local v17    # "flags":I
    .end local v18    # "resolvedStream":I
    .end local v19    # "isMute":Z
    .restart local p1    # "direction":I
    .restart local p3    # "flags":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 3464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3465
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3466
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3468
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3469
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .line 5866
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5867
    return-void

    .line 5870
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5871
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5872
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5874
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5875
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .line 5878
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5879
    return-void

    .line 5882
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5884
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5885
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v1

    const-string v2, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5886
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5888
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 9615
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canChangeAccessibilityVolume()Z
    .locals 5

    .line 2953
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2954
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2956
    monitor-exit v0

    return v2

    .line 2958
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v1, :cond_2

    .line 2959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2960
    .local v1, "callingUid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 2961
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_1

    .line 2962
    monitor-exit v0

    return v2

    .line 2960
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2966
    .end local v1    # "callingUid":I
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canProjectAudio(Landroid/media/projection/IMediaProjection;)Z
    .locals 6
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 9620
    const/4 v0, 0x0

    const-string v1, "AS.AudioService"

    if-nez p1, :cond_0

    .line 9621
    const-string v2, "MediaProjection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9622
    return v0

    .line 9625
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    .line 9626
    .local v2, "projectionService":Landroid/media/projection/IMediaProjectionManager;
    if-nez v2, :cond_1

    .line 9627
    const-string v3, "Can\'t get service IMediaProjectionManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9628
    return v0

    .line 9632
    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9633
    const-string v3, "App passed invalid MediaProjection token"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9634
    return v0

    .line 9640
    :cond_2
    nop

    .line 9643
    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9644
    const-string v3, "App passed MediaProjection that can not project audio"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9645
    return v0

    .line 9651
    :cond_3
    nop

    .line 9653
    const/4 v0, 0x1

    return v0

    .line 9647
    :catch_0
    move-exception v3

    .line 9648
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .canProjectAudio() on valid IMediaProjection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9649
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9648
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9650
    return v0

    .line 9636
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 9637
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .isValidMediaProjection() on IMediaProjectionManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9638
    invoke-interface {v2}, Landroid/media/projection/IMediaProjectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9637
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9639
    return v0
.end method

.method private checkAddAllFixedVolumeDevices(ILjava/lang/String;)V
    .locals 5
    .param p1, "device"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1542
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1543
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1544
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1547
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v2, v1

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 1549
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1547
    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, p2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 1552
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    .end local v1    # "streamType":I
    :cond_1
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 7

    .line 1481
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1483
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1484
    .local v2, "numStreamTypes":I
    const/4 v3, 0x0

    .local v3, "streamType":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1485
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AS.AudioService"

    .line 1486
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1488
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1489
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1484
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1492
    .end local v2    # "numStreamTypes":I
    .end local v3    # "streamType":I
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1493
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1494
    return-void

    .line 1492
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    :try_start_4
    throw v2

    .line 1493
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .line 1558
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1559
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1560
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    .end local v1    # "streamType":I
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 1565
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1566
    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 8
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 5365
    const/4 v0, 0x1

    .line 5366
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 5370
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 5372
    .local v1, "ringerMode":I
    const/16 v2, 0x64

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    const-string v6, "AS.AudioService"

    if-eq v1, v5, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 5452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5374
    :cond_1
    if-ne p2, v4, :cond_3

    .line 5375
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_2

    .line 5381
    if-gt p3, p1, :cond_14

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_14

    .line 5382
    const/4 v1, 0x1

    .line 5383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_3

    .line 5386
    :cond_2
    if-ne p1, p3, :cond_14

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_14

    .line 5387
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 5390
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_14

    if-eq p2, v3, :cond_4

    const/16 v2, -0x64

    if-ne p2, v2, :cond_14

    .line 5392
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_5

    .line 5393
    const/4 v1, 0x1

    goto :goto_0

    .line 5395
    :cond_5
    const/4 v1, 0x0

    .line 5398
    :goto_0
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_3

    .line 5402
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_7

    .line 5403
    const-string v2, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    goto/16 :goto_3

    .line 5407
    :cond_7
    if-ne p2, v4, :cond_b

    .line 5409
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_8

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_8

    if-eqz p4, :cond_8

    .line 5410
    const/4 v1, 0x2

    goto :goto_1

    .line 5411
    :cond_8
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v4, :cond_d

    .line 5412
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_a

    .line 5413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    .line 5415
    .local v2, "diff":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 5416
    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5417
    const/4 v1, 0x0

    .line 5419
    .end local v2    # "diff":J
    :cond_9
    goto :goto_1

    .line 5420
    :cond_a
    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 5423
    :cond_b
    if-eq p2, v5, :cond_c

    if-eq p2, v3, :cond_c

    if-ne p2, v2, :cond_d

    .line 5426
    :cond_c
    const/4 v1, 0x2

    .line 5428
    :cond_d
    :goto_1
    and-int/lit8 v0, v0, -0x2

    .line 5429
    goto :goto_3

    .line 5431
    :cond_e
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v6, :cond_f

    if-ne p2, v4, :cond_f

    mul-int/lit8 v4, p3, 0x2

    if-lt p1, v4, :cond_f

    if-eqz p4, :cond_f

    .line 5433
    const/4 v1, 0x2

    goto :goto_2

    .line 5434
    :cond_f
    if-eq p2, v5, :cond_10

    if-eq p2, v3, :cond_10

    if-ne p2, v2, :cond_13

    .line 5437
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_11

    .line 5438
    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    .line 5440
    :cond_11
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_12

    if-ne p2, v5, :cond_12

    .line 5441
    const/4 v1, 0x1

    goto :goto_2

    .line 5445
    :cond_12
    const/4 v1, 0x2

    .line 5449
    :cond_13
    :goto_2
    and-int/lit8 v0, v0, -0x2

    .line 5450
    nop

    .line 5456
    :cond_14
    :goto_3
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 5457
    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_15

    goto :goto_4

    .line 5459
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5462
    :cond_16
    :goto_4
    const/4 v2, 0x0

    const-string v3, "AS.AudioService.checkForRingerModeChange"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 5464
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 5466
    return v0

    .line 5367
    .end local v1    # "ringerMode":I
    :cond_17
    :goto_5
    return v0
.end method

.method private checkMonitorAudioServerStatePermission()V
    .locals 2

    .line 10540
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 10543
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10546
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10548
    :cond_1
    :goto_0
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    .line 1572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1573
    aget-object v1, v1, v0

    .line 1574
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1575
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1576
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 1577
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1572
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1580
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 8709
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8710
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 8712
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8713
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_0

    .line 8714
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 8716
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 8717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .locals 7
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 9710
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 9711
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9713
    .local v0, "hasPermissionForPolicy":Z
    :goto_0
    const/4 v1, 0x0

    const-string v2, " / uid "

    const-string v3, " for pid "

    const-string v4, "AS.AudioService"

    if-nez v0, :cond_1

    .line 9714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9715
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9714
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9717
    return-object v1

    .line 9720
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9721
    .local v5, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v5, :cond_2

    .line 9722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9723
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unregistered policy"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9722
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9725
    return-object v1

    .line 9727
    :cond_2
    return-object v5
.end method

.method private createAudioSystemThread()V
    .locals 1

    .line 1408
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1409
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1410
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1411
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .line 1583
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1584
    .local v0, "numStreamTypes":I
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1586
    .local v1, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1587
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1591
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1592
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1593
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1594
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1595
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 3564
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3565
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 3567
    .local v1, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3568
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 3569
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3570
    const/4 v2, 0x1

    return v2

    .line 3572
    .end local v1    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_0
    goto :goto_0

    .line 3573
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 9882
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9883
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9885
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9886
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_0

    .line 9887
    :cond_0
    monitor-exit v0

    .line 9888
    return-void

    .line 9887
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpDeviceTypes(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 9012
    .local p1, "deviceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9013
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9014
    const-string v1, ""

    return-object v1

    .line 9016
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9017
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9018
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9021
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8978
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- zen mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8982
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const-string v1, "affected"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8983
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const-string/jumbo v1, "muted"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8984
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8985
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .line 8988
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8989
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8990
    if-eqz p3, :cond_5

    .line 8991
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8992
    const/4 v0, 0x1

    .line 8993
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2

    .line 8994
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 8995
    .local v2, "stream":I
    and-int v4, p3, v2

    if-eqz v4, :cond_1

    .line 8996
    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8997
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8998
    not-int v3, v2

    and-int/2addr p3, v3

    .line 8999
    const/4 v0, 0x0

    .line 8993
    .end local v2    # "stream":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9002
    .end local v1    # "i":I
    :cond_2
    if-eqz p3, :cond_4

    .line 9003
    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 9004
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9006
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 9008
    .end local v0    # "first":Z
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9009
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1610
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1612
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1615
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1617
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1618
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method private dumpSupportedSystemUsage(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 9099
    const-string v0, "Supported System Usages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9100
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 9102
    const-string v2, "\t%s\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    aget v5, v5, v1

    invoke-static {v5}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 9101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9104
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 9105
    return-void

    .line 9104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpVolumeGroups(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6392
    const-string v0, "\nVolume Groups (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6394
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 6395
    .local v1, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->access$2600(Lcom/android/server/audio/AudioService$VolumeGroupState;Ljava/io/PrintWriter;)V

    .line 6396
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6393
    .end local v1    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6398
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private enforceModifyAudioRoutingPermission()V
    .locals 2

    .line 2759
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2763
    return-void

    .line 2761
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 12
    .param p1, "caller"    # Ljava/lang/String;

    .line 8681
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 8682
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 8684
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 8685
    .local v10, "device":I
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 8686
    .local v11, "index":I
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_0

    .line 8687
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v10, p1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 8689
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8698
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 8699
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8700
    const-string v2, "AS.AudioService"

    const-string v3, "enforceSafeMediaVolume() reset safe volume for Abs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8701
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 8705
    .end local v10    # "device":I
    .end local v11    # "index":I
    :cond_0
    goto :goto_0

    .line 8706
    :cond_1
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 9145
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only SystemUI can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9147
    return-void
.end method

.method private ensureValidAttributes(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 4
    .param p1, "avg"    # Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6361
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;

    .line 6362
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 6363
    .local v0, "hasAtLeastOneValidAudioAttributes":Z
    if-eqz v0, :cond_0

    .line 6367
    return-void

    .line 6364
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume Group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no valid audio attributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 5595
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5604
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5602
    :cond_1
    :goto_0
    nop

    .line 5606
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .line 3871
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3874
    return-void

    .line 3872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .line 5609
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5612
    return-void

    .line 5610
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .locals 7
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "request"    # I
    .param p3, "uid"    # I

    .line 8341
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    .line 8345
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 8346
    .local v1, "extraInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 8347
    const-string v2, "a11y_force_ducking"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 8350
    :cond_1
    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 8351
    return v2

    .line 8353
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8354
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_4

    .line 8355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 8356
    .local v4, "callingUid":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 8357
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3

    .line 8358
    monitor-exit v3

    return v2

    .line 8356
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8362
    .end local v4    # "callingUid":I
    .end local v5    # "i":I
    :cond_4
    monitor-exit v3

    .line 8363
    return v0

    .line 8362
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8348
    :cond_5
    :goto_1
    return v0

    .line 8343
    .end local v1    # "extraInfo":Landroid/os/Bundle;
    :cond_6
    :goto_2
    return v0
.end method

.method private getActiveStreamOemType(I)I
    .locals 9
    .param p1, "suggestedStreamType"    # I

    .line 5757
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 5759
    return v2

    .line 5762
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x5

    const-string v8, "AS.AudioService"

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 5764
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5765
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5768
    return v4

    .line 5771
    :cond_2
    return v5

    .line 5773
    :cond_3
    const-string v0, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne p1, v1, :cond_9

    .line 5774
    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5776
    const-string v0, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    return v2

    .line 5778
    :cond_4
    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5781
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    return v7

    .line 5786
    :cond_5
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5788
    const-string v0, "getActiveStreamType: Forcing STREAM_ALARM stream active"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    return v1

    .line 5794
    :cond_6
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5796
    const-string v0, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO stream active"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    return v4

    .line 5799
    :cond_7
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5801
    const-string v0, "getActiveStreamType: Forcing STREAM_VOICE_CALL stream active"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    return v5

    .line 5807
    :cond_8
    const-string v0, "getActiveStreamType: Forcing AudioSystem.STREAM_RING(2) b/c default"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    return v6

    .line 5812
    :cond_9
    sget v3, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 5813
    invoke-direct {p0, v7, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5815
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    return v7

    .line 5817
    :cond_a
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5819
    const-string v0, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5820
    return v6

    .line 5823
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5824
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 5826
    const-string v0, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5827
    return v4

    .line 5829
    :cond_c
    const-string v0, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5830
    return v5

    .line 5832
    :cond_d
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v0, :cond_e

    .line 5834
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    return v7

    .line 5836
    :cond_e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v4, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v0, :cond_f

    .line 5838
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    return v6

    .line 5840
    :cond_f
    if-ne p1, v1, :cond_12

    .line 5841
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5843
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5844
    return v7

    .line 5845
    :cond_10
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5847
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5848
    return v6

    .line 5851
    :cond_11
    const-string v0, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    return v2

    .line 5859
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    return p1
.end method

.method private getActiveStreamType(I)I
    .locals 11
    .param p1, "suggestedStreamType"    # I

    .line 5647
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 5649
    return v2

    .line 5652
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const-string v4, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x5

    const-string v9, "AS.AudioService"

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 5654
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5655
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5658
    return v5

    .line 5661
    :cond_2
    return v6

    .line 5663
    :cond_3
    const-string v0, "getActiveStreamType: Forcing STREAM_RING stream active"

    const-string v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne p1, v1, :cond_9

    .line 5664
    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5666
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    return v7

    .line 5668
    :cond_4
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v8, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5671
    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5672
    return v8

    .line 5676
    :cond_5
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5678
    const-string v0, "getActiveStreamType: Forcing STREAM_ALARM stream active"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5679
    return v1

    .line 5684
    :cond_6
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5686
    const-string v0, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO stream active"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    return v5

    .line 5689
    :cond_7
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5691
    const-string v0, "getActiveStreamType: Forcing STREAM_VOICE_CALL stream active"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    return v6

    .line 5697
    :cond_8
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    return v2

    .line 5702
    :cond_9
    sget v10, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 5703
    invoke-direct {p0, v8, v10}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5705
    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    return v8

    .line 5707
    :cond_a
    sget v3, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5709
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    return v7

    .line 5713
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5714
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 5716
    const-string v0, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    return v5

    .line 5719
    :cond_c
    const-string v0, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    return v6

    .line 5722
    :cond_d
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v8, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v0, :cond_e

    .line 5724
    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    return v8

    .line 5726
    :cond_e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v5, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v0, :cond_f

    .line 5728
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    return v7

    .line 5730
    :cond_f
    if-ne p1, v1, :cond_12

    .line 5731
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v8, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5733
    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    return v8

    .line 5735
    :cond_10
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5737
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    return v7

    .line 5741
    :cond_11
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    return v2

    .line 5749
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    return p1
.end method

.method private getAudioHalPids()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10594
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 10595
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 10596
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 10597
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10598
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 10599
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    const-string v6, "android.hardware.audio"

    .line 10601
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10602
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10604
    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    :cond_0
    goto :goto_0

    .line 10605
    :cond_1
    return-object v2

    .line 10606
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 10607
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1
.end method

.method private getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 3
    .param p1, "volumeGroupId"    # I

    .line 2798
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 2799
    .local v1, "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2800
    return-object v1

    .line 2802
    .end local v1    # "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :cond_0
    goto :goto_0

    .line 2804
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": invalid volume group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 4

    .line 3419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3421
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3422
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3422
    return v3

    .line 3426
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3427
    throw v2

    .line 3423
    :catch_0
    move-exception v2

    .line 3426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3427
    nop

    .line 3428
    const/4 v2, 0x0

    return v2
.end method

.method private getDevicesForStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .line 6000
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .line 6004
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 6005
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 6007
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getHearingAidStreamType(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 2975
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 2984
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2985
    return v1

    .line 2987
    :cond_0
    return v0

    .line 2978
    :cond_1
    return v1
.end method

.method private getIndexRange(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 2003
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNewRingerMode(III)I
    .locals 1
    .param p1, "stream"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 2677
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2682
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    .line 2683
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2694
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2685
    :cond_2
    :goto_0
    if-nez p2, :cond_5

    .line 2686
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 2687
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 2688
    :cond_4
    const/4 v0, 0x2

    :goto_1
    nop

    .local v0, "newRingerMode":I
    goto :goto_2

    .line 2690
    .end local v0    # "newRingerMode":I
    :cond_5
    const/4 v0, 0x2

    .line 2692
    .restart local v0    # "newRingerMode":I
    :goto_2
    return v0
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    .line 9657
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    .line 9658
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 9659
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 9661
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .locals 7

    .line 5265
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 5266
    .local v0, "min":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 5268
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 5271
    :goto_0
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 5272
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 5273
    .local v3, "index":I
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 5275
    .local v4, "gainDB":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5277
    goto :goto_2

    .line 5278
    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_1

    .line 5279
    move v0, v3

    .line 5280
    goto :goto_2

    .line 5281
    :cond_1
    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    .line 5282
    move v0, v3

    goto :goto_1

    .line 5284
    :cond_2
    move v2, v3

    .line 5286
    .end local v3    # "index":I
    .end local v4    # "gainDB":F
    :goto_1
    goto :goto_0

    .line 5287
    :cond_3
    :goto_2
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private static getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;
    .locals 2
    .param p0, "deviceType"    # I

    .line 10669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService_DeviceVolumeBehavior_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 3281
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3282
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 3283
    .local v0, "volumeGroupId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3284
    return v0

    .line 3288
    :cond_0
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 3292
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3294
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 3295
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 3296
    .local v3, "volumeGroupId":I
    if-eq v3, v2, :cond_0

    .line 3297
    return v3

    .line 3299
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3    # "volumeGroupId":I
    :cond_0
    goto :goto_0

    .line 3300
    :cond_1
    return v2
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8260
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 8261
    .local v0, "target":Ljava/lang/String;
    const-string v1, "AS.AudioService"

    if-eqz v0, :cond_0

    .line 8262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8263
    return-void

    .line 8265
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 8269
    .local v2, "ril":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 8270
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 8271
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 8272
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8273
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8274
    return-void

    .line 8277
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8278
    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 8516
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    .line 8517
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AS.AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8525
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    .line 8526
    .local v3, "cameraSoundForced":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8527
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    .line 8528
    .local v7, "cameraSoundForcedChanged":Z
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 8529
    if-eqz v7, :cond_4

    .line 8530
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_2

    .line 8531
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8532
    :try_start_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    .line 8533
    .local v0, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v3, :cond_1

    .line 8534
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 8535
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 8538
    :cond_1
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AS.AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 8539
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 8542
    .end local v0    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8544
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 8542
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "context":Landroid/content/Context;
    :try_start_5
    throw v0

    .line 8546
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "cameraSoundForced":Z
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x4

    .line 8547
    if-eqz v3, :cond_3

    .line 8548
    const/16 v6, 0xb

    goto :goto_3

    :cond_3
    nop

    :goto_3
    const-string v9, "handleConfigurationChanged"

    .line 8546
    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 8550
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8558
    .end local v7    # "cameraSoundForcedChanged":Z
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 8559
    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 8562
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    goto :goto_4

    .line 8558
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "cameraSoundForced":Z
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "context":Landroid/content/Context;
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 8560
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 8561
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AS.AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8563
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private hasDeviceVolumeBehavior(I)Z
    .locals 2
    .param p1, "audioSystemDeviceOut"    # I

    .line 10716
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 3578
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3579
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3580
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3581
    const/4 v1, 0x1

    return v1

    .line 3584
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initA11yMonitoring()V
    .locals 2

    .line 8862
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8863
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8864
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8865
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8866
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 8867
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 8868
    return-void
.end method

.method private initVolumeGroupStates()V
    .locals 6

    .line 6340
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6343
    .local v1, "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidAttributes(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6351
    nop

    .line 6352
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v3

    new-instance v4, Lcom/android/server/audio/AudioService$VolumeGroupState;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;Lcom/android/server/audio/AudioService$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6353
    .end local v1    # "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    goto :goto_0

    .line 6344
    .restart local v1    # "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :catch_0
    move-exception v2

    .line 6348
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for internal policy needs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6350
    goto :goto_0

    .line 6354
    .end local v1    # "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6355
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 6356
    .local v1, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    .line 6354
    .end local v1    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6358
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private isAlarm(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 4142
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 2699
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2700
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2701
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2700
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2702
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 2703
    return v0

    .line 2705
    :cond_0
    return v3

    .line 2706
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2707
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isBluetoothA2dpDeviceOn()Z
    .locals 3

    .line 8011
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 8013
    return v2

    .line 8014
    :cond_0
    const/16 v0, 0x100

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 8016
    return v2

    .line 8017
    :cond_1
    const/16 v0, 0x200

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 8019
    return v2

    .line 8021
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isFixedVolumeDevice(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .line 10650
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 10651
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->isLegacyRemoteSubmixActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10652
    const/4 v0, 0x0

    return v0

    .line 10654
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFullVolumeDevice(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .line 10658
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 10659
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->isLegacyRemoteSubmixActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10660
    const/4 v0, 0x0

    return v0

    .line 10662
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMedia(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 4151
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMicrophoneSupposedToBeMuted()Z
    .locals 1

    .line 3809
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMuteAdjust(I)Z
    .locals 1
    .param p1, "adjust"    # I

    .line 5615
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 4146
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .line 286
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z
    .locals 10
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "hasFocusAccess"    # Z
    .param p3, "isVolumeController"    # Z
    .param p4, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 9532
    const/4 v0, 0x0

    .line 9533
    .local v0, "requireValidProjection":Z
    const/4 v1, 0x0

    .line 9534
    .local v1, "requireCaptureAudioOrMediaOutputPerm":Z
    const/4 v2, 0x0

    .line 9535
    .local v2, "requireModifyRouting":Z
    const/4 v3, 0x0

    .line 9538
    .local v3, "voiceCommunicationCaptureMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 9540
    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9542
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9539
    :cond_1
    :goto_0
    or-int/lit8 v2, v2, 0x1

    .line 9544
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "AS.AudioService"

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audiopolicy/AudioMix;

    .line 9546
    .local v5, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedPlaybackCapture()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 9548
    or-int/lit8 v1, v1, 0x1

    .line 9551
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v8

    invoke-static {v8}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v8

    .line 9552
    .local v8, "error":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 9553
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9554
    return v7

    .line 9558
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix;->containsMatchAttributeRuleForUsage(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9563
    if-nez v3, :cond_4

    .line 9564
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 9566
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9572
    .end local v8    # "error":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-eqz p4, :cond_6

    .line 9573
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9575
    :cond_6
    or-int/lit8 v2, v2, 0x1

    .line 9577
    .end local v5    # "mix":Landroid/media/audiopolicy/AudioMix;
    :goto_3
    goto :goto_2

    .line 9579
    :cond_7
    if-eqz v1, :cond_8

    .line 9580
    const-string v4, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 9581
    const-string v4, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 9582
    const-string v4, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9584
    return v7

    .line 9587
    :cond_8
    const/4 v4, 0x1

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 9588
    const-string v5, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 9590
    const-string v4, "Privileged audio capture for voice communication requires CAPTURE_VOICE_COMMUNICATION_OUTPUT system permission"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9592
    return v7

    .line 9596
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/audiopolicy/AudioMix;

    .line 9597
    .local v8, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/media/audiopolicy/AudioMixingRule;->setVoiceCommunicationCaptureAllowed(Z)V

    .line 9598
    .end local v8    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_4

    .line 9601
    :cond_a
    if-eqz v0, :cond_b

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->canProjectAudio(Landroid/media/projection/IMediaProjection;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 9602
    return v7

    .line 9605
    :cond_b
    if-eqz v2, :cond_c

    .line 9606
    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 9607
    const-string v4, "Can not capture audio without MODIFY_AUDIO_ROUTING"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9608
    return v7

    .line 9611
    :cond_c
    return v4
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 5495
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSupportedSystemUsage(I)Z
    .locals 3
    .param p1, "usage"    # I

    .line 8367
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 8369
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 8370
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 8368
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8373
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 8374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSystem(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 4156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z
    .locals 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 8392
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    .line 8393
    .local v0, "usage":I
    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 8394
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8395
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isSupportedSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8394
    :goto_0
    return v2

    .line 8397
    :cond_1
    return v2
.end method

.method private isWiredHeadsetOn()Z
    .locals 2

    .line 7998
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 8000
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    .line 8002
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 8004
    const/4 v0, 0x0

    return v0

    .line 8006
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 11
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .line 8281
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8284
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 8285
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8286
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    .line 8287
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 8289
    :cond_0
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 8292
    .local v2, "permissions":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 8293
    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8296
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 8297
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_4

    .line 8298
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 8300
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 8301
    goto :goto_1

    .line 8304
    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 8306
    goto :goto_1

    .line 8308
    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8309
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8310
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8311
    goto :goto_1

    .line 8314
    :cond_3
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8315
    .local v6, "uid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 8316
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 8315
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8320
    .end local v6    # "uid":I
    goto :goto_1

    .line 8318
    :catch_0
    move-exception v6

    .line 8319
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AS.AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8297
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 8322
    .end local v4    # "j":I
    :cond_4
    return-void

    .line 8294
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v3

    .line 8295
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method static synthetic lambda$ensureValidAttributes$0(Landroid/media/AudioAttributes;)Z
    .locals 1
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 6362
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # I
    .param p1, "device"    # I

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeSendSystemAudioStatusCommand(Z)V
    .locals 6
    .param p1, "isMuteAdjust"    # Z

    .line 2617
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2623
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2624
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 2625
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v4

    .line 2626
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    .line 2627
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v3

    .line 2624
    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    .line 2628
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    return-void

    .line 2620
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z
    .locals 9
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3926
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3927
    return v1

    .line 3929
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3931
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 3932
    return v1

    .line 3935
    :cond_2
    if-nez p1, :cond_3

    .line 3936
    return v1

    .line 3938
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 3940
    return v2
.end method

.method private muteRingerModeStreams()V
    .locals 28

    .line 4059
    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 4061
    .local v2, "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 4062
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4065
    :cond_0
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 4066
    .local v3, "ringerMode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 4068
    .local v5, "ringerModeMute":Z
    :goto_1
    if-ne v3, v4, :cond_3

    .line 4069
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 4071
    .local v6, "shouldRingSco":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4073
    .local v7, "eventSource":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 4074
    if-eqz v6, :cond_4

    const/4 v8, 0x3

    move v13, v8

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 4073
    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4076
    add-int/lit8 v8, v2, -0x1

    .local v8, "streamType":I
    :goto_4
    if-ltz v8, :cond_10

    .line 4077
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    .line 4078
    .local v9, "isMuted":Z
    const/4 v10, 0x2

    if-eqz v6, :cond_6

    if-eq v8, v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v4

    .line 4080
    .local v11, "muteAllowedBySco":Z
    :goto_6
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    .line 4081
    .local v12, "shouldZenMute":Z
    if-nez v12, :cond_8

    if-eqz v5, :cond_7

    .line 4082
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move v13, v4

    .line 4083
    .local v13, "shouldMute":Z
    :goto_8
    if-ne v9, v13, :cond_9

    move/from16 v18, v2

    move/from16 v20, v3

    move v3, v4

    const/4 v2, 0x0

    goto/16 :goto_e

    .line 4084
    :cond_9
    if-nez v13, :cond_f

    .line 4087
    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_e

    .line 4088
    const-class v14, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v14

    .line 4089
    :try_start_0
    iget-object v15, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v15, v8

    .line 4090
    .local v15, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "i":I
    :goto_9
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_b

    .line 4091
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4092
    .local v0, "device":I
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4093
    .local v4, "value":I
    if-nez v4, :cond_a

    .line 4094
    move/from16 v18, v2

    .end local v2    # "numStreamTypes":I
    .local v18, "numStreamTypes":I
    :try_start_1
    const-string v2, "AS.AudioService"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v3

    move/from16 v19, v4

    const/16 v3, 0xa

    const/4 v4, 0x1

    .end local v3    # "ringerMode":I
    .end local v4    # "value":I
    .local v19, "value":I
    .local v20, "ringerMode":I
    :try_start_2
    invoke-virtual {v15, v3, v0, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    goto :goto_a

    .line 4129
    .end local v0    # "device":I
    .end local v10    # "i":I
    .end local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v19    # "value":I
    .end local v20    # "ringerMode":I
    .restart local v3    # "ringerMode":I
    :catchall_0
    move-exception v0

    move/from16 v20, v3

    .end local v3    # "ringerMode":I
    .restart local v20    # "ringerMode":I
    goto/16 :goto_c

    .line 4093
    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .restart local v0    # "device":I
    .restart local v2    # "numStreamTypes":I
    .restart local v3    # "ringerMode":I
    .restart local v4    # "value":I
    .restart local v10    # "i":I
    .restart local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a
    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v19, v4

    .line 4090
    .end local v0    # "device":I
    .end local v2    # "numStreamTypes":I
    .end local v3    # "ringerMode":I
    .end local v4    # "value":I
    .restart local v18    # "numStreamTypes":I
    .restart local v20    # "ringerMode":I
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v18

    move/from16 v3, v20

    const/4 v4, 0x1

    goto :goto_9

    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .restart local v2    # "numStreamTypes":I
    .restart local v3    # "ringerMode":I
    :cond_b
    move/from16 v18, v2

    move/from16 v20, v3

    .line 4098
    .end local v2    # "numStreamTypes":I
    .end local v3    # "ringerMode":I
    .end local v10    # "i":I
    .restart local v18    # "numStreamTypes":I
    .restart local v20    # "ringerMode":I
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 4099
    .restart local v0    # "device":I
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v25, 0x0

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v26, v3, v8

    const/16 v27, 0x1f4

    move-object/from16 v21, v2

    move/from16 v24, v0

    invoke-static/range {v21 .. v27}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4110
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v2, 0x8d

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4111
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v2

    .line 4112
    .local v2, "devices":I
    const/4 v3, 0x2

    if-ne v8, v3, :cond_c

    if-ne v0, v3, :cond_c

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_c

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_c

    .line 4116
    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    .line 4117
    .local v3, "otherDevice":I
    const-string v4, "AS.AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "device":I
    .local v17, "device":I
    const-string/jumbo v0, "muteRingerModeStreams() pesist ring volume for other device:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v25, 0x0

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v26, v4, v8

    const/16 v27, 0x1f4

    move-object/from16 v21, v0

    move/from16 v24, v3

    invoke-static/range {v21 .. v27}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b

    .line 4112
    .end local v3    # "otherDevice":I
    .end local v17    # "device":I
    .restart local v0    # "device":I
    :cond_c
    move/from16 v17, v0

    .end local v0    # "device":I
    .restart local v17    # "device":I
    goto :goto_b

    .line 4110
    .end local v2    # "devices":I
    .end local v17    # "device":I
    .restart local v0    # "device":I
    :cond_d
    move/from16 v17, v0

    .line 4129
    .end local v0    # "device":I
    .end local v15    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_b
    monitor-exit v14

    goto :goto_d

    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .local v2, "numStreamTypes":I
    .local v3, "ringerMode":I
    :catchall_1
    move-exception v0

    move/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "numStreamTypes":I
    .end local v3    # "ringerMode":I
    .restart local v18    # "numStreamTypes":I
    .restart local v20    # "ringerMode":I
    :goto_c
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_c

    .line 4087
    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .restart local v2    # "numStreamTypes":I
    .restart local v3    # "ringerMode":I
    :cond_e
    move/from16 v18, v2

    move/from16 v20, v3

    .line 4131
    .end local v2    # "numStreamTypes":I
    .end local v3    # "ringerMode":I
    .restart local v18    # "numStreamTypes":I
    .restart local v20    # "ringerMode":I
    :goto_d
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 4132
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v4, v3, v8

    not-int v4, v4

    and-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_e

    .line 4135
    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .restart local v2    # "numStreamTypes":I
    .restart local v3    # "ringerMode":I
    :cond_f
    move/from16 v18, v2

    move/from16 v20, v3

    move v3, v4

    const/4 v2, 0x0

    .end local v2    # "numStreamTypes":I
    .end local v3    # "ringerMode":I
    .restart local v18    # "numStreamTypes":I
    .restart local v20    # "ringerMode":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 4136
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v4, v3, v8

    or-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 4076
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    :goto_e
    add-int/lit8 v8, v8, -0x1

    move v4, v3

    move/from16 v2, v18

    move/from16 v3, v20

    goto/16 :goto_4

    .line 4139
    .end local v8    # "streamType":I
    .end local v18    # "numStreamTypes":I
    .end local v20    # "ringerMode":I
    .restart local v2    # "numStreamTypes":I
    .restart local v3    # "ringerMode":I
    :cond_10
    return-void
.end method

.method private notifyExternalVolumeController(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 2274
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 2276
    .local v1, "externalVolumeController":Landroid/media/audiopolicy/IAudioPolicyCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    if-nez v1, :cond_0

    .line 2278
    const/4 v0, 0x0

    return v0

    .line 2281
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2284
    const/4 v0, 0x1

    return v0

    .line 2276
    .end local v1    # "externalVolumeController":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private observeDevicesForStreams(I)V
    .locals 4
    .param p1, "skipStream"    # I

    .line 6011
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6012
    const/4 v1, 0x0

    .local v1, "stream":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6013
    if-eq v1, p1, :cond_0

    .line 6014
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 6012
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6017
    .end local v1    # "stream":I
    :cond_1
    monitor-exit v0

    .line 6018
    return-void

    .line 6017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .locals 7
    .param p1, "newDevice"    # I

    .line 6281
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 6282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 6281
    const-string/jumbo v2, "onAccessoryPlugMediaUnmute newDevice=%d [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6285
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 6286
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    .line 6287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v1

    .line 6288
    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v1

    .line 6289
    invoke-virtual {v5, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 6290
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_1

    .line 6292
    new-array v0, v0, [Ljava/lang/Object;

    .line 6293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 6292
    const-string/jumbo v4, "onAccessoryPlugMediaUnmute unmuting device=%d [%s]"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 6302
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v0

    if-ne v1, v4, :cond_0

    .line 6303
    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 6301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6308
    .end local v0    # "stream":I
    :cond_1
    return-void
.end method

.method private onCheckActiveUpDownPath()Z
    .locals 12

    .line 5216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 5217
    return v1

    .line 5220
    :cond_0
    const/4 v0, 0x0

    .line 5221
    .local v0, "currentModeOwnerUid":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5222
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v2

    .line 5223
    .local v2, "currentModeOwnerPid":I
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->GetAppProcessName(I)Ljava/lang/String;

    move-result-object v4

    .line 5224
    .local v4, "callingPackage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5225
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5227
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 5231
    nop

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5232
    goto :goto_2

    .line 5231
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5228
    :catch_0
    move-exception v8

    .line 5229
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v9, "AS.AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCheckActiveUpDownPath() could not find UID for package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5231
    nop

    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5232
    throw v1

    .line 5235
    .end local v2    # "currentModeOwnerPid":I
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "identity":J
    :cond_1
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 5236
    .local v2, "m_current_mode_owner_uids":Ljava/lang/String;
    const-string v4, "get_active_player_uid"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5237
    .local v4, "m_active_player_uids":Ljava/lang/String;
    const-string v5, "get_active_recoder_uid"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5239
    .local v5, "m_active_recoder_uids":Ljava/lang/String;
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x6

    .line 5240
    invoke-static {v6, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v4, :cond_3

    .line 5241
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    .line 5242
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5243
    :cond_4
    return v1

    .line 5245
    :cond_5
    return v3
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11
    .param p1, "caller"    # Ljava/lang/String;

    .line 5112
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5113
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5114
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 5116
    .local v2, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5117
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5124
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 5125
    .local v3, "index":I
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5126
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v5

    if-le v3, v5, :cond_1

    .line 5128
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v6, 0xea60

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 5129
    const v6, 0x44aa200

    if-le v5, v6, :cond_0

    .line 5130
    const/4 v5, 0x1

    invoke-direct {p0, v5, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 5131
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 5134
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5135
    const-string v4, "AS.AudioService"

    const-string/jumbo v6, "post notification dialog for EU when unsafe volume music time >20h!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    new-instance v4, Landroid/app/NotificationChannel;

    const-string v6, "AUDIO_LONGTIME_WARNINGS"

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v8, 0x50f00a9

    .line 5137
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v1, v4

    .line 5140
    .local v1, "channel":Landroid/app/NotificationChannel;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 5141
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5143
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/16 v8, 0x10

    invoke-static {v6, v5, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5145
    .local v6, "p":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v9, "AUDIO_LONGTIME_WARNINGS"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x108008a

    .line 5147
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v9, 0x106001c

    .line 5148
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v9, 0x50f00aa

    .line 5150
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 5152
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 5153
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 5154
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 5155
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 5156
    .local v5, "notification":Landroid/app/Notification;
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    const v8, 0x33954c0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8, v5, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 5161
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "p":Landroid/app/PendingIntent;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 5165
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_1
    monitor-exit v0

    .line 5166
    return-void

    .line 5165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCheckPhoneMode(Ljava/lang/String;)V
    .locals 10
    .param p1, "caller"    # Ljava/lang/String;

    .line 5175
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5176
    :try_start_0
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckPhoneMode callingPackage= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5178
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onCheckActiveUpDownPath()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5179
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x26

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5186
    iput v2, p0, Lcom/android/server/audio/AudioService;->mabPhonestateComActiveMs:I

    goto :goto_0

    .line 5188
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x26

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5195
    iget v1, p0, Lcom/android/server/audio/AudioService;->mabPhonestateComActiveMs:I

    const v3, 0xea60

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mabPhonestateComActiveMs:I

    .line 5196
    const v3, 0x2bf20

    if-le v1, v3, :cond_2

    .line 5197
    const/4 v1, 0x0

    .line 5198
    .local v1, "currentModeOwnerPid":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5199
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move v1, v3

    .line 5200
    const/4 v3, 0x0

    .line 5201
    .local v3, "mode":I
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->GetAppProcessName(I)Ljava/lang/String;

    move-result-object v4

    .line 5202
    .local v4, "callingPackage":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v3, v5, :cond_1

    .line 5203
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "onCheckRestorePhoneMode"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/audio/AudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 5205
    :cond_1
    iput v2, p0, Lcom/android/server/audio/AudioService;->mabPhonestateComActiveMs:I

    .line 5206
    const-string v2, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCheckPhoneMode restore (mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5211
    .end local v1    # "currentModeOwnerPid":I
    .end local v3    # "mode":I
    .end local v4    # "callingPackage":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 5212
    return-void

    .line 5211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1508
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1510
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1520
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1521
    invoke-direct {p0, v2, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    .line 1522
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v2, :cond_1

    .line 1524
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    or-int/lit8 v2, v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    .line 1526
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1528
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_1

    .line 1531
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1532
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_4

    .line 1534
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    or-int/lit8 v1, v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    .line 1536
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1539
    :cond_5
    :goto_1
    return-void
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 13
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 5299
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 5301
    .local v1, "mcc":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    .line 5302
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 5305
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 5307
    const-string v2, "audio.safemedia.force"

    .line 5308
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 5309
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11100bf

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 5311
    .local v2, "safeMediaVolumeEnabled":Z
    :goto_1
    const-string v5, "audio.safemedia.bypass"

    .line 5312
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 5317
    .local v3, "safeMediaVolumeBypass":Z
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 5318
    const/4 v4, 0x3

    .line 5322
    .local v4, "persistedState":I
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 5323
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/4 v7, 0x3

    if-nez v5, :cond_3

    .line 5324
    iput v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 5325
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_2

    .line 5328
    :cond_3
    iput v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 5331
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5332
    const-string v5, "AS.AudioService"

    const-string/jumbo v6, "onConfigureSafeVolume() all safe volume index <= safeMediaVolumeIndex, reset to active!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    iput v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    goto :goto_2

    .line 5339
    .end local v4    # "persistedState":I
    :cond_4
    const/4 v5, 0x1

    .line 5340
    .local v5, "persistedState":I
    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    move v4, v5

    .line 5342
    .end local v5    # "persistedState":I
    .restart local v4    # "persistedState":I
    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 5343
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5351
    .end local v1    # "mcc":I
    .end local v2    # "safeMediaVolumeEnabled":Z
    .end local v3    # "safeMediaVolumeBypass":Z
    .end local v4    # "persistedState":I
    :cond_6
    monitor-exit v0

    .line 5352
    return-void

    .line 5351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .locals 6
    .param p1, "state"    # Z

    .line 1396
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    .local v2, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1402
    goto :goto_1

    .line 1400
    :catch_0
    move-exception v3

    .line 1401
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "AS.AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    .end local v2    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1404
    :cond_0
    monitor-exit v0

    .line 1405
    return-void

    .line 1404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 7
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 9905
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9907
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 9908
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 9910
    :try_start_1
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9914
    goto :goto_2

    .line 9911
    :catch_0
    move-exception v1

    .line 9912
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9913
    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9912
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9915
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    return-void

    .line 9917
    .end local v4    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    goto :goto_1

    .line 9918
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_1
    goto :goto_0

    .line 9919
    :cond_2
    monitor-exit v0

    .line 9920
    return-void

    .line 9919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1815
    .local p1, "enabledSurroundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1816
    .local v3, "surroundFormat":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1817
    .local v4, "enabled":Z
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1818
    .local v5, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enable surround format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    .end local v3    # "surroundFormat":I
    .end local v4    # "enabled":Z
    .end local v5    # "ret":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1820
    :cond_0
    return-void
.end method

.method private onObserveDevicesForAllStreams()V
    .locals 1

    .line 6030
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    .line 6031
    return-void
.end method

.method private onPlaybackConfigChange(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 3004
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    const/4 v0, 0x0

    .line 3005
    .local v0, "voiceActive":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 3006
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    .line 3007
    .local v3, "usage":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 3009
    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 3010
    const/4 v0, 0x1

    .line 3011
    goto :goto_1

    .line 3013
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v3    # "usage":I
    :cond_1
    goto :goto_0

    .line 3014
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v1, v0, :cond_3

    .line 3015
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHearingAidVolumeOnVoiceActivityUpdate()V

    .line 3017
    :cond_3
    return-void
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;Z)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "hasModifyAudioSettings"    # Z

    .line 2724
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 2725
    .local v0, "stream":I
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2727
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2728
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2729
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v1

    const-string v3, "AS.AudioService.onSetStreamVolume"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2734
    :cond_1
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq p1, v1, :cond_4

    .line 2737
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2738
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    if-nez p2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    goto :goto_1

    .line 2740
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 2750
    :cond_4
    :goto_1
    new-array v1, v3, [I

    const/16 v4, 0x8a

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2751
    if-eqz p5, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 2752
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    if-nez p2, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 2756
    :cond_6
    return-void
.end method

.method private onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 6
    .param p1, "update"    # Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 7388
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    aget-object v0, v0, v1

    .line 7389
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->hasVolumeIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7390
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->getVolumeIndex()I

    move-result v1

    .line 7391
    .local v1, "index":I
    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    iget-object v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 7394
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 7395
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 7394
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7396
    .end local v1    # "index":I
    goto :goto_0

    .line 7397
    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update vol on dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 7398
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 7397
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7400
    :goto_0
    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7401
    return-void
.end method

.method private onUnmuteStream(II)V
    .locals 10
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .line 2600
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    .line 2602
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    move-result v2

    .line 2604
    .local v2, "wasMuted":Z
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 2605
    .local v3, "device":I
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2606
    .local v6, "index":I
    move-object v4, p0

    move v5, p1

    move v7, v6

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2607
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v3    # "device":I
    .end local v6    # "index":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2608
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz v2, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V

    .line 2611
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2613
    :cond_0
    :goto_0
    return-void

    .line 2607
    .end local v2    # "wasMuted":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private onUpdateRingerModeServiceInt()V
    .locals 2

    .line 4201
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 4202
    return-void
.end method

.method private persistDeviceVolumeBehavior(II)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "deviceVolumeBehavior"    # I

    .line 10675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting Volume Behavior for DeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10677
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 10678
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;

    move-result-object v1

    .line 10677
    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 10681
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5900
    .local v0, "ident":J
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5902
    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5903
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 7

    .line 9126
    const-string v0, "AS.AudioService"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 9127
    .local v1, "isLowRamDevice":Z
    const-wide/32 v2, 0x40000000

    .line 9130
    .local v2, "totalMemory":J
    :try_start_0
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 9131
    .local v4, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 9132
    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 9136
    .end local v4    # "info":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_0

    .line 9133
    :catch_0
    move-exception v4

    .line 9134
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9135
    const/4 v1, 0x1

    .line 9138
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v4

    .line 9139
    .local v4, "status":I
    if-eqz v4, :cond_0

    .line 9140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9142
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7
    .param p1, "userSwitch"    # Z

    .line 4807
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 4808
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 4811
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4812
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v0, :cond_4

    .line 4813
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v1

    .line 4815
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_0

    .line 4816
    goto :goto_1

    .line 4819
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 4820
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 4822
    :try_start_0
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4823
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_3

    .line 4824
    :cond_2
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 4826
    :cond_3
    monitor-exit v5

    .line 4812
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4826
    .restart local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4831
    .end local v1    # "streamType":I
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 4833
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 4834
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 4835
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 4837
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4838
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const v5, 0x44aa200

    invoke-static {v4, v3, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4841
    iget v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v3, v2, :cond_5

    .line 4842
    const-string v2, "AS.AudioService"

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 4844
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4846
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readVolumeGroupsSettings()V

    .line 4849
    const-string v1, "AS.AudioService"

    const-string v2, "Restoring device volume behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->restoreDeviceVolumeBehavior()V

    .line 4852
    return-void

    .line 4844
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private readCameraSoundForced()Z
    .locals 3

    .line 8499
    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8500
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 8499
    :cond_1
    return v1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1696
    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1699
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1703
    if-eqz v2, :cond_1

    .line 1704
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v7, v1

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1699
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1707
    return-void
.end method

.method private readPersistedSettings()V
    .locals 9

    .line 1877
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1878
    return-void

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1891
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1892
    .local v1, "ringerModeFromSettings":I
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x8a

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    .line 1893
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne v3, v4, :cond_1

    .line 1894
    nop

    .line 1895
    const-string/jumbo v3, "mode_ringer"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1898
    :cond_1
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    goto :goto_0

    .line 1902
    :cond_2
    nop

    .line 1903
    const-string/jumbo v3, "mode_ringer"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1907
    :goto_0
    move v3, v1

    .line 1910
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1911
    const/4 v3, 0x2

    .line 1913
    :cond_3
    if-ne v3, v2, :cond_4

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_4

    .line 1914
    const/4 v3, 0x0

    .line 1916
    :cond_4
    if-eq v3, v1, :cond_5

    .line 1917
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1919
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v7, :cond_7

    .line 1920
    :cond_6
    const/4 v3, 0x2

    .line 1922
    :cond_7
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1923
    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1924
    iget v8, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne v8, v4, :cond_8

    .line 1925
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1931
    :cond_8
    nop

    .line 1933
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_9

    move v4, v6

    goto :goto_1

    .line 1934
    :cond_9
    move v4, v5

    .line 1931
    :goto_1
    invoke-static {v5, v2, v4}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1935
    nop

    .line 1937
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_a

    goto :goto_2

    .line 1938
    :cond_a
    move v6, v5

    .line 1935
    :goto_2
    invoke-static {v4, v5, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1940
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1941
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1942
    const-string/jumbo v4, "readPersistedSettings"

    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1943
    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1944
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1945
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    invoke-static {v4}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    .line 1946
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    const/16 v4, 0x6f

    const/4 v6, -0x2

    const-string/jumbo v7, "mute_streams_affected"

    invoke-static {v0, v7, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1952
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1954
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1959
    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v6, v4}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1960
    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v6, v4}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1963
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1964
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1967
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1968
    return-void

    .line 1946
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private readUserRestrictions()V
    .locals 8

    .line 1971
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1972
    return-void

    .line 1974
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1977
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1978
    const-string v2, "disallow_unmute_device"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1980
    const-string/jumbo v4, "no_adjust_volume"

    invoke-virtual {v1, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 1982
    .local v1, "masterMute":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_3

    .line 1983
    const/4 v1, 0x0

    .line 1984
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1987
    :cond_3
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Master mute %s, user=%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1990
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1991
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1993
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v7, "no_unmute_microphone"

    invoke-virtual {v5, v0, v7}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    .line 1996
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 1996
    const-string v2, "Mic mute %b, user=%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 2000
    return-void
.end method

.method private readVolumeGroupsSettings()V
    .locals 2

    .line 6371
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "readVolumeGroupsSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6374
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 6375
    .local v1, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    .line 6376
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    .line 6373
    .end local v1    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6378
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V
    .locals 2
    .param p1, "audioSystemDeviceOut"    # I

    .line 10730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing DeviceType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from mFixedVolumeDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10733
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10734
    return-void
.end method

.method private removeAudioSystemDeviceOutFromFullVolumeDevices(I)V
    .locals 2
    .param p1, "audioSystemDeviceOut"    # I

    .line 10746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing DeviceType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from mFullVolumeDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10749
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10750
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .line 2007
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v0

    .line 2008
    .local v0, "srcRange":I
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v1

    .line 2009
    .local v1, "dstRange":I
    if-nez v0, :cond_0

    .line 2010
    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleIndex : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    return v2

    .line 2014
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    .line 2015
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v3

    sub-int v3, p1, v3

    mul-int/2addr v3, v1

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 2014
    return v2
.end method

.method private rescaleStep(III)I
    .locals 4
    .param p1, "step"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .line 2020
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v0

    .line 2021
    .local v0, "srcRange":I
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v1

    .line 2022
    .local v1, "dstRange":I
    if-nez v0, :cond_0

    .line 2023
    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleStep : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const/4 v2, 0x0

    return v2

    .line 2027
    :cond_0
    mul-int v2, p1, v1

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int/2addr v2, v0

    return v2
.end method

.method private restoreDeviceVolumeBehavior()V
    .locals 6

    .line 10692
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceVolumeBehaviorSupportedDeviceOutSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10694
    .local v1, "deviceType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving Volume Behavior for DeviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10696
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v2

    .line 10697
    .local v2, "deviceVolumeBehavior":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 10699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping Setting Volume Behavior for DeviceType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10701
    goto :goto_0

    .line 10704
    :cond_0
    const-string v3, "AudioService.restoreDeviceVolumeBehavior()"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V

    .line 10706
    .end local v1    # "deviceType":I
    .end local v2    # "deviceVolumeBehavior":I
    goto :goto_0

    .line 10707
    :cond_1
    return-void
.end method

.method private restoreVolumeGroups()V
    .locals 2

    .line 6383
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "restoreVolumeGroups"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6386
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 6387
    .local v1, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    .line 6385
    .end local v1    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6389
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private retrieveStoredDeviceVolumeBehavior(I)I
    .locals 4
    .param p1, "deviceType"    # I

    .line 10685
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 10686
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;

    move-result-object v1

    .line 10685
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private safeMediaVolumeIndex(I)I
    .locals 2
    .param p1, "device"    # I

    .line 8647
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8648
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 8650
    :cond_0
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_1

    .line 8651
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    .line 8653
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 9114
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 9120
    const/4 v0, 0x0

    return-object v0

    .line 9118
    :cond_0
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 9117
    :cond_1
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 9116
    :cond_2
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 9115
    :cond_3
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .line 5169
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5170
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3395
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3396
    return-void

    .line 3398
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3399
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3402
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3405
    nop

    .line 3406
    return-void

    .line 3404
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3405
    throw v2
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .locals 18
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "forceUpdate"    # Z

    .line 1768
    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1770
    return-void

    .line 1772
    :cond_0
    const-string v2, "encoded_surround_output_enabled_formats"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "enabledSurroundFormats":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1777
    const-string v0, ""

    move-object v4, v0

    goto :goto_0

    .line 1774
    :cond_1
    move-object v4, v0

    .line 1779
    .end local v0    # "enabledSurroundFormats":Ljava/lang/String;
    .local v4, "enabledSurroundFormats":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_2

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    return-void

    .line 1785
    :cond_2
    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1786
    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1787
    .local v6, "surroundFormats":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 1788
    .local v14, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_6

    aget-object v10, v6, v9

    .line 1790
    .local v10, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1791
    .local v0, "audioFormat":I
    const/4 v11, 0x0

    .line 1792
    .local v11, "isSurroundFormat":Z
    sget-object v12, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v13, v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_4

    aget v16, v12, v15

    move/from16 v17, v16

    .line 1793
    .local v17, "sf":I
    move/from16 v8, v17

    .end local v17    # "sf":I
    .local v8, "sf":I
    if-ne v8, v0, :cond_3

    .line 1794
    const/4 v11, 0x1

    .line 1795
    goto :goto_3

    .line 1792
    .end local v8    # "sf":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1798
    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1799
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    .end local v0    # "audioFormat":I
    .end local v11    # "isSurroundFormat":Z
    :cond_5
    goto :goto_4

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid enabled surround format:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "AS.AudioService"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "format":Ljava/lang/String;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1807
    :cond_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1809
    invoke-static {v5, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1807
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1810
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v8, 0x18

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1811
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "encodedSurroundMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1742
    const/16 v0, 0x10

    .line 1743
    .local v0, "forceSetting":I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1754
    :cond_0
    const/16 v0, 0xf

    .line 1755
    goto :goto_0

    .line 1751
    :cond_1
    const/16 v0, 0xe

    .line 1752
    goto :goto_0

    .line 1748
    :cond_2
    const/16 v0, 0xd

    .line 1749
    goto :goto_0

    .line 1745
    :cond_3
    const/4 v0, 0x0

    .line 1746
    nop

    .line 1761
    :goto_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    .line 1762
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1765
    :cond_4
    return-void
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1733
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1736
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1737
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 3459
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 3460
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 3461
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5907
    if-nez p2, :cond_0

    .line 5908
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5909
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5910
    return-void

    .line 5913
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 5914
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5915
    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3409
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3412
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    nop

    .line 3416
    return-void

    .line 3414
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    throw v2
.end method

.method private setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V
    .locals 4
    .param p1, "audioSystemDeviceOut"    # I
    .param p2, "deviceVolumeBehavior"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 6058
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceVolumeBehaviorSupportedDeviceOutSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6064
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 6079
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Absolute volume unsupported for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6070
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    .line 6071
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFixedVolumeDevices(I)V

    .line 6072
    goto :goto_0

    .line 6074
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFullVolumeDevices(I)V

    .line 6075
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V

    .line 6076
    goto :goto_0

    .line 6066
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    .line 6067
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V

    .line 6068
    nop

    .line 6083
    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume behavior "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for dev=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6085
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 6083
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceVolumeBehavior:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    .line 6089
    return-void

    .line 6060
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9867
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9869
    const-string v0, "AS.AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9871
    return-void

    .line 9873
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9875
    const-string v1, "AS.AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9877
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9878
    monitor-exit v0

    .line 9879
    return-void

    .line 9878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 2
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .line 3634
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    .line 3635
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 3638
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3640
    return-void

    .line 3642
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3643
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3646
    return-void

    .line 3648
    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 3649
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 3
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 3653
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Master mute %s, %d, user=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    .line 3659
    return-void

    .line 3666
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 3667
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_3

    .line 3668
    :cond_2
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 3669
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 3670
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 3671
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 3674
    :cond_3
    return-void
.end method

.method private setMicMuteFromSwitchInput()V
    .locals 3

    .line 3793
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 3794
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->isMicMuted()I

    move-result v1

    .line 3795
    .local v1, "isMicMuted":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3796
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->isMicMuted()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteFromSwitch(Z)V

    .line 3798
    :cond_1
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 3813
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isMicrophoneSupposedToBeMuted()Z

    move-result v0

    .line 3815
    .local v0, "muted":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Mic mute %b, user=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_5

    .line 3819
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v1

    .line 3820
    .local v1, "currentMute":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3821
    .local v3, "identity":J
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioSystemAdapter;->muteMicrophone(Z)I

    move-result v5

    .line 3824
    .local v5, "ret":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    .line 3825
    if-eqz v5, :cond_1

    .line 3826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error changing mic mute state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_1
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v6, "audio.mic"

    invoke-direct {v2, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v2, p1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 3832
    const-string/jumbo v7, "setMicrophoneMuteNoCallerCheck"

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v6, Landroid/media/MediaMetrics$Property;->MUTE:Landroid/media/MediaMetrics$Key;

    .line 3833
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    if-eqz v7, :cond_2

    .line 3834
    const-string/jumbo v7, "on"

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "off"

    .line 3833
    :goto_0
    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v6, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    .line 3835
    if-eqz v0, :cond_3

    .line 3836
    const-string/jumbo v7, "mute"

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "unmute"

    .line 3835
    :goto_1
    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v6, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    .line 3837
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 3838
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3846
    if-eq v0, v1, :cond_4

    .line 3847
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x1e

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3851
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3852
    throw v2

    .line 3851
    :cond_4
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3852
    nop

    .line 3854
    .end local v1    # "currentMute":Z
    .end local v3    # "identity":J
    .end local v5    # "ret":I
    :cond_5
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;IILjava/lang/String;)I
    .locals 28
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .line 4438
    move-object/from16 v8, p0

    move-object/from16 v1, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeInt(mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AS.AudioService"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    const/4 v12, 0x0

    .line 4442
    .local v12, "newModeOwnerPid":I
    if-nez v1, :cond_0

    .line 4443
    const-string/jumbo v0, "setModeInt() called with null binder"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    return v12

    .line 4447
    :cond_0
    const/4 v0, 0x0

    .line 4448
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 4449
    .local v13, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz v3, :cond_4

    .line 4450
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4451
    .local v3, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 4452
    move-object v4, v3

    .line 4454
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v4, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 4455
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v0

    if-ne v0, v14, :cond_1

    .line 4456
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x1f

    invoke-virtual {v0, v5, v4}, Lcom/android/server/audio/AudioService$AudioHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 4459
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v4, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4460
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_2

    .line 4461
    const/4 v0, 0x0

    .end local v4    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    goto :goto_1

    .line 4460
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v4    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_2
    move-object v0, v4

    .line 4466
    .end local v4    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :goto_1
    goto :goto_2

    .line 4463
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v4    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :catch_0
    move-exception v0

    .line 4464
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v4, 0x0

    .line 4465
    const-string/jumbo v5, "link does not exist ..."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    move-object v0, v4

    goto :goto_2

    .line 4469
    .end local v3    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v4    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_3
    goto :goto_0

    .line 4470
    :cond_4
    :goto_2
    iget v6, v8, Lcom/android/server/audio/AudioService;->mMode:I

    .line 4471
    .local v6, "oldMode":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v2

    move/from16 v16, v3

    .line 4474
    .end local p1    # "mode":I
    .end local p2    # "cb":Landroid/os/IBinder;
    .local v4, "cb":Landroid/os/IBinder;
    .local v5, "mode":I
    .local v16, "status":I
    :goto_3
    move/from16 v17, v5

    .line 4475
    .local v17, "actualMode":I
    const/16 v18, 0x8d

    const/4 v3, 0x1

    if-nez v5, :cond_8

    .line 4477
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4478
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4479
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 4480
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v1

    .line 4483
    .end local v17    # "actualMode":I
    .local v1, "actualMode":I
    new-array v2, v3, [I

    aput v18, v2, v15

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4486
    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4487
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4488
    .local v2, "packageName":Ljava/lang/String;
    const-string v14, "com.tencent.mm"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 4489
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v14, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postHfpReconnectBroadcast(Ljava/lang/String;)V

    .line 4494
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4495
    invoke-static {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$2200(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4494
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v1

    move-object v1, v0

    goto :goto_4

    .line 4477
    .end local v1    # "actualMode":I
    .restart local v17    # "actualMode":I
    :cond_6
    move-object v1, v0

    .line 4501
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v1, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :goto_4
    new-array v0, v3, [I

    const/16 v2, 0x8c

    aput v2, v0, v15

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4502
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "onCheckRestorePhoneMode"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4503
    move/from16 v17, v5

    .line 4504
    if-eqz v1, :cond_7

    .line 4505
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4507
    :try_start_1
    invoke-interface {v4, v1, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4510
    :goto_5
    goto :goto_6

    .line 4508
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4509
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "error unlinking to death"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/util/NoSuchElementException;
    goto :goto_5

    .line 4539
    :cond_7
    :goto_6
    move-object v0, v1

    move-object v15, v4

    move v9, v5

    move v11, v6

    move/from16 v14, v17

    goto :goto_9

    .line 4516
    .end local v1    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_8
    if-nez v0, :cond_9

    .line 4517
    new-instance v14, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v15, v4

    .end local v4    # "cb":Landroid/os/IBinder;
    .local v15, "cb":Landroid/os/IBinder;
    move/from16 v4, p3

    move v9, v5

    .end local v5    # "mode":I
    .local v9, "mode":I
    move/from16 v5, p4

    move v11, v6

    .end local v6    # "oldMode":I
    .local v11, "oldMode":I
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IILjava/lang/String;)V

    move-object v0, v14

    move-object v1, v0

    goto :goto_7

    .line 4516
    .end local v9    # "mode":I
    .end local v11    # "oldMode":I
    .end local v15    # "cb":Landroid/os/IBinder;
    .restart local v4    # "cb":Landroid/os/IBinder;
    .restart local v5    # "mode":I
    .restart local v6    # "oldMode":I
    :cond_9
    move-object v15, v4

    move v9, v5

    move v11, v6

    .end local v4    # "cb":Landroid/os/IBinder;
    .end local v5    # "mode":I
    .end local v6    # "oldMode":I
    .restart local v9    # "mode":I
    .restart local v11    # "oldMode":I
    .restart local v15    # "cb":Landroid/os/IBinder;
    move-object v1, v0

    .line 4521
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v1    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :goto_7
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v15, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4525
    goto :goto_8

    .line 4522
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4524
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4530
    invoke-virtual {v1, v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 4534
    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPackageName(Ljava/lang/String;)V

    move-object v0, v1

    move/from16 v14, v17

    .line 4539
    .end local v1    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v17    # "actualMode":I
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v14, "actualMode":I
    :goto_9
    iget v1, v8, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v14, v1, :cond_15

    .line 4542
    if-eqz v10, :cond_a

    .line 4543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4544
    .local v1, "setModeClient":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 4545
    .end local v1    # "setModeClient":Ljava/lang/String;
    goto :goto_a

    .line 4546
    :cond_a
    const-string/jumbo v1, "setModeClient=nullPackage"

    .line 4547
    .restart local v1    # "setModeClient":Ljava/lang/String;
    const-string/jumbo v2, "setModeClient=nullPackage"

    invoke-static {v2}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 4552
    .end local v1    # "setModeClient":Ljava/lang/String;
    :goto_a
    const/4 v6, 0x1

    new-array v1, v6, [I

    const/16 v2, 0xb4

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4553
    const-string v1, "com.tencent.tmgp.sgame"

    const/4 v2, 0x3

    if-ne v2, v14, :cond_b

    if-eqz v10, :cond_b

    .line 4554
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isKing_vol=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    const-string/jumbo v2, "isKing_vol=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 4558
    :cond_b
    if-nez v14, :cond_c

    if-eqz v10, :cond_c

    .line 4559
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isKing_vol=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    const-string/jumbo v1, "isKing_vol=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 4565
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4566
    .local v1, "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getModeOwnerUid()I

    move-result v3

    invoke-static {v14, v3}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result v3

    .line 4567
    .end local v16    # "status":I
    .local v3, "status":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4568
    if-nez v3, :cond_13

    .line 4569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mode successfully set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    iput v14, v8, Lcom/android/server/audio/AudioService;->mMode:I

    .line 4574
    new-array v4, v6, [I

    const/4 v5, 0x0

    aput v18, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4576
    iget-boolean v4, v8, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    const-string v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    move-wide/from16 p1, v1

    .end local v1    # "identity":J
    .local p1, "identity":J
    const/16 v1, 0xa

    const/4 v2, 0x6

    if-ne v4, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4577
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 4578
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v8, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/2addr v4, v1

    .line 4579
    .local v4, "currentBtScoVol":I
    iget-object v6, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4580
    iget-object v6, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() revert sco volume to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    .end local v4    # "currentBtScoVol":I
    :cond_d
    iget v1, v8, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    if-ne v14, v4, :cond_f

    const/16 v1, 0x1388

    .line 4585
    const/4 v4, 0x3

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4586
    invoke-virtual {v8, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 4587
    .local v1, "btScoDevice":I
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4588
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 4589
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v6, 0xa

    div-int/2addr v4, v6

    .line 4590
    .restart local v4    # "currentBtScoVol":I
    const-string/jumbo v2, "tts.ring.sco.volume"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4591
    .local v2, "ttsRingScoVol":I
    if-ge v4, v2, :cond_f

    .line 4592
    const/4 v6, 0x1

    iput-boolean v6, v8, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 4593
    iget-object v6, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/16 v16, 0x6

    aget-object v6, v6, v16

    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4594
    iget-object v5, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v16

    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode() set sco volume to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oldindex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4574
    .end local v2    # "ttsRingScoVol":I
    .end local v4    # "currentBtScoVol":I
    .end local p1    # "identity":J
    .local v1, "identity":J
    :cond_e
    move-wide/from16 p1, v1

    .line 4602
    .end local v1    # "identity":J
    .restart local p1    # "identity":J
    :cond_f
    :goto_b
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v4, 0x8e

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4603
    invoke-virtual {v8, v1}, Lcom/android/server/audio/AudioService;->postCallDeviceChange(I)V

    .line 4609
    :cond_10
    const/4 v1, 0x2

    if-ne v14, v1, :cond_12

    .line 4610
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4611
    const-string/jumbo v2, "setStreamMute STREAM_MUSIC mute!"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    const/4 v6, 0x1

    invoke-static {v1, v6}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    const/4 v2, 0x0

    goto :goto_d

    .line 4610
    :cond_11
    const/4 v6, 0x1

    goto :goto_c

    .line 4609
    :cond_12
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 4614
    :goto_c
    const-string/jumbo v2, "setStreamMute STREAM_MUSIC unmute!"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 4627
    .end local p1    # "identity":J
    :goto_d
    move v5, v9

    goto :goto_e

    .line 4619
    .restart local v1    # "identity":J
    :cond_13
    move-wide/from16 p1, v1

    const/4 v2, 0x0

    .end local v1    # "identity":J
    .restart local p1    # "identity":J
    if-eqz v0, :cond_14

    .line 4620
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4621
    invoke-interface {v15, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4624
    :cond_14
    const-string v1, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    const/4 v5, 0x0

    .line 4627
    .end local v9    # "mode":I
    .end local p1    # "identity":J
    .restart local v5    # "mode":I
    :goto_e
    move/from16 v16, v3

    move v9, v5

    goto :goto_f

    .line 4628
    .end local v3    # "status":I
    .end local v5    # "mode":I
    .restart local v9    # "mode":I
    .restart local v16    # "status":I
    :cond_15
    const/4 v6, 0x1

    const/4 v1, 0x0

    move/from16 v16, v1

    .line 4630
    :goto_f
    if-eqz v16, :cond_17

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_10

    :cond_16
    move v5, v9

    move v6, v11

    move-object v4, v15

    const/4 v14, 0x3

    const/4 v15, 0x0

    move/from16 v9, p3

    move/from16 v11, p4

    goto/16 :goto_3

    .line 4632
    :cond_17
    :goto_10
    if-nez v16, :cond_1d

    .line 4633
    if-eqz v14, :cond_18

    .line 4634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v12

    .line 4635
    if-nez v12, :cond_18

    .line 4636
    const-string/jumbo v1, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    :cond_18
    iget-object v7, v8, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v5

    move-object/from16 v2, p5

    move/from16 v3, p3

    move v4, v9

    move-object/from16 v17, v13

    move-object v13, v5

    .end local v13    # "iter":Ljava/util/Iterator;
    .local v17, "iter":Ljava/util/Iterator;
    move v5, v12

    move/from16 p1, v12

    move v12, v6

    .end local v12    # "newModeOwnerPid":I
    .local p1, "newModeOwnerPid":I
    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v7, v13}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 4643
    const/high16 v1, -0x80000000

    invoke-direct {v8, v1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v13

    .line 4644
    .local v13, "streamType":I
    invoke-virtual {v8, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 4645
    .local v7, "device":I
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v13

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 4652
    .local v18, "index":I
    new-array v1, v12, [I

    const/16 v2, 0x8a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4653
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v13

    const/4 v5, 0x1

    const/16 v19, 0x1

    const-string v6, "AlertSliderManager"

    move-object/from16 v1, p0

    move/from16 v3, v18

    move v4, v7

    move/from16 v27, v7

    .end local v7    # "device":I
    .local v27, "device":I
    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    goto :goto_11

    .line 4656
    .end local v27    # "device":I
    .restart local v7    # "device":I
    :cond_19
    move/from16 v27, v7

    .end local v7    # "device":I
    .restart local v27    # "device":I
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v13

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v4, v27

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 4666
    :goto_11
    if-eqz v10, :cond_1a

    const-string v1, "com.tencent"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez v9, :cond_1a

    const/4 v1, 0x3

    if-eq v14, v1, :cond_1b

    .line 4668
    :cond_1a
    invoke-direct {v8, v12, v10}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 4673
    :cond_1b
    invoke-virtual {v8, v11, v14}, Lcom/android/server/audio/AudioService;->updateAbsVolumeMultiModeDevices(II)V

    .line 4675
    const/4 v1, 0x3

    if-ne v14, v1, :cond_1c

    .line 4676
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v21, 0x1f

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0xbb8

    move-object/from16 v20, v1

    move-object/from16 v25, v0

    invoke-static/range {v20 .. v26}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4685
    .end local v13    # "streamType":I
    .end local v18    # "index":I
    .end local v27    # "device":I
    :cond_1c
    move/from16 v12, p1

    goto :goto_12

    .line 4632
    .end local v17    # "iter":Ljava/util/Iterator;
    .end local p1    # "newModeOwnerPid":I
    .restart local v12    # "newModeOwnerPid":I
    .local v13, "iter":Ljava/util/Iterator;
    :cond_1d
    move-object/from16 v17, v13

    .line 4685
    .end local v13    # "iter":Ljava/util/Iterator;
    .restart local v17    # "iter":Ljava/util/Iterator;
    :goto_12
    return v12
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 18
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .line 3944
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v2, :cond_f

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 3949
    :cond_0
    const/4 v11, 0x1

    new-array v2, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0x8a

    aput v13, v2, v12

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3950
    iget v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v2, v11, :cond_2

    .line 3951
    if-eqz p3, :cond_1

    iget v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-eq v0, v2, :cond_1

    .line 3952
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3955
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :goto_0
    return-void

    .line 3961
    :cond_2
    if-eqz v10, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 3964
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 3965
    if-ne v0, v11, :cond_3

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_3

    .line 3966
    const/4 v0, 0x0

    move v14, v0

    .end local p1    # "ringerMode":I
    .local v0, "ringerMode":I
    goto :goto_1

    .line 3968
    .end local v0    # "ringerMode":I
    .restart local p1    # "ringerMode":I
    :cond_3
    move v14, v0

    .end local p1    # "ringerMode":I
    .local v14, "ringerMode":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3970
    .local v15, "identity":J
    :try_start_0
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3971
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    .line 3972
    .local v0, "ringerModeInternal":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    .line 3973
    .local v3, "ringerModeExternal":I
    const/4 v2, 0x2

    if-eqz p3, :cond_7

    .line 3974
    invoke-direct {v1, v14}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3975
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_6

    .line 3983
    new-array v4, v11, [I

    aput v13, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3984
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_4

    .line 3985
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v14

    move-object/from16 v5, p2

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v14, v2

    move-object/from16 v17, v9

    goto :goto_2

    .line 3984
    :cond_4
    move-object/from16 v17, v9

    goto :goto_2

    .line 3989
    :cond_5
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    move v6, v14

    move-object/from16 v7, p2

    move v8, v0

    move-object/from16 v17, v9

    move-object v9, v2

    :try_start_2
    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v14, v2

    goto :goto_2

    .line 3975
    :cond_6
    move-object/from16 v17, v9

    .line 3994
    :goto_2
    if-eq v14, v0, :cond_d

    .line 3995
    invoke-direct {v1, v14, v11}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto/16 :goto_4

    .line 3998
    :cond_7
    move-object/from16 v17, v9

    if-eq v14, v0, :cond_8

    .line 3999
    invoke-direct {v1, v14, v11}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 4001
    :cond_8
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_a

    .line 4009
    new-array v4, v11, [I

    aput v13, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4010
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_a

    .line 4011
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v0

    move v6, v14

    move-object/from16 v7, p2

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v4

    move v14, v4

    goto :goto_3

    .line 4015
    :cond_9
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v0

    move v6, v14

    move-object/from16 v7, p2

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v4

    move v14, v4

    .line 4026
    :cond_a
    :goto_3
    new-array v4, v11, [I

    aput v13, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4027
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    if-eqz v4, :cond_b

    if-ne v14, v2, :cond_b

    if-eqz v10, :cond_b

    const-string v2, "AlertSliderManager"

    .line 4028
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4029
    const-string v2, "AS.AudioService"

    const-string v4, "AlertSliderManager can not set external ringer mode to normal due to zen mode is open"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4031
    :cond_b
    invoke-direct {v1, v14}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    goto :goto_4

    .line 4034
    :cond_c
    invoke-direct {v1, v14}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 4038
    .end local v0    # "ringerModeInternal":I
    .end local v3    # "ringerModeExternal":I
    :cond_d
    :goto_4
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4040
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4041
    nop

    .line 4042
    return-void

    .line 4038
    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    :goto_5
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v14    # "ringerMode":I
    .end local v15    # "identity":J
    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p2    # "caller":Ljava/lang/String;
    .end local p3    # "external":Z
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local v14    # "ringerMode":I
    .restart local v15    # "identity":J
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p2    # "caller":Ljava/lang/String;
    .restart local p3    # "external":Z
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 4040
    :catchall_2
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4041
    throw v0

    .line 3962
    .end local v14    # "ringerMode":I
    .end local v15    # "identity":J
    .restart local p1    # "ringerMode":I
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3945
    :cond_f
    :goto_6
    return-void
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 4045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4046
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    .line 4047
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 4048
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4050
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 4051
    return-void

    .line 4048
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .line 4161
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4162
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4163
    .local v1, "change":Z
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 4164
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 4165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4168
    new-array v0, v2, [I

    const/16 v4, 0x8a

    aput v4, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4169
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 4170
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerModeInt set ringerMode  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to database to avoid user-switch and data do not store in time"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AS.AudioService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    :cond_1
    if-eqz p2, :cond_2

    .line 4177
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4180
    :cond_2
    if-eqz v1, :cond_3

    .line 4182
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 4186
    new-array v0, v2, [I

    const/16 v2, 0x8d

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4187
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHeadsetProfileStatus()V

    .line 4189
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateStatusForRingtone()V

    .line 4194
    :cond_3
    return-void

    .line 4165
    .end local v1    # "change":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 12
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 8658
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8659
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 8661
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v3, :cond_0

    .line 8662
    iput v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 8663
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    .line 8664
    :cond_0
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v1, :cond_1

    .line 8665
    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 8666
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 8667
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 8668
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v11, 0xea60

    move-object v10, p2

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8677
    :cond_1
    :goto_0
    monitor-exit v0

    .line 8678
    return-void

    .line 8677
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 21
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "hasModifyAudioSettings"    # Z

    .line 3094
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume(stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_0

    .line 3099
    return-void

    .line 3102
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3103
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v12, v2, v9

    .line 3104
    .local v12, "streamTypeAlias":I
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v2, v12

    .line 3106
    .local v13, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    .line 3110
    .local v14, "device":I
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x8a

    const/4 v15, 0x0

    aput v4, v3, v15

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3111
    const/4 v3, 0x2

    if-ne v12, v3, :cond_5

    .line 3112
    if-eqz v11, :cond_5

    new-instance v3, Ljava/lang/String;

    const-string v4, "android.media.cts"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3113
    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    if-ge v0, v3, :cond_3

    .line 3116
    if-nez v0, :cond_2

    .line 3117
    const-string v3, "AS.AudioService"

    const-string v4, "If change volume to nonzero,need unmute all alias stream firstly"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const/4 v3, 0x0

    .local v3, "stream":I
    :goto_0
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 3119
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v3

    if-ne v12, v4, :cond_1

    .line 3120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unmute stream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 3118
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3126
    .end local v3    # "stream":I
    :cond_2
    iget v0, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 3128
    .end local p2    # "index":I
    .local v0, "index":I
    :cond_3
    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    if-le v0, v3, :cond_4

    .line 3129
    iget v0, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 3131
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume range fixed to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] by system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_1

    .line 3140
    .end local v0    # "index":I
    .restart local p2    # "index":I
    :cond_5
    move v3, v0

    .end local p2    # "index":I
    .local v3, "index":I
    :goto_1
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_6

    .line 3142
    return-void

    .line 3146
    :cond_6
    const/16 v0, 0x3e8

    move/from16 v4, p6

    if-ne v4, v0, :cond_7

    .line 3147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v0, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v7, v0

    .end local p6    # "uid":I
    .local v0, "uid":I
    goto :goto_2

    .line 3146
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_7
    move v7, v4

    .line 3149
    .end local p6    # "uid":I
    .local v7, "uid":I
    :goto_2
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v12

    invoke-virtual {v0, v4, v7, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 3151
    return-void

    .line 3154
    :cond_8
    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3155
    invoke-direct {v8, v12, v3, v1}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3156
    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 3157
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3160
    :cond_a
    :goto_3
    invoke-direct {v8, v12, v1}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3161
    return-void

    .line 3164
    :cond_b
    iget-object v6, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3166
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 3168
    invoke-virtual {v13, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v5, v0

    .line 3170
    .local v5, "oldIndex":I
    mul-int/lit8 v0, v3, 0xa

    invoke-direct {v8, v0, v9, v12}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    move v3, v0

    .line 3174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v0, :cond_c

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_c

    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_c

    .line 3176
    move v0, v3

    .line 3177
    .local v0, "tmpIndex":I
    :try_start_1
    invoke-virtual {v8, v2, v3}, Lcom/android/server/audio/AudioService;->getA2dpVolume(ZI)I

    move-result v2

    move v3, v2

    .line 3178
    const-string v2, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setStreamVolume() after check safe volume, index="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    if-eq v3, v0, :cond_c

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3180
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v4, v3, 0xa

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 3256
    .end local v0    # "tmpIndex":I
    .end local v5    # "oldIndex":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_b

    .line 3183
    .restart local v5    # "oldIndex":I
    :cond_c
    :goto_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    const/4 v15, 0x3

    if-nez v0, :cond_d

    .line 3184
    if-ne v12, v15, :cond_d

    :try_start_3
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 3185
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    and-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_d

    .line 3188
    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume postSetAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stream="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v2, v3, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 3208
    :cond_d
    const/high16 v0, 0x8000000

    if-ne v14, v0, :cond_e

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    if-ne v9, v0, :cond_e

    .line 3210
    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stream="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 3215
    :cond_e
    if-ne v12, v15, :cond_f

    .line 3216
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {v8, v5, v3, v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3219
    :cond_f
    and-int/lit8 v1, v1, -0x21

    .line 3220
    .end local p3    # "flags":I
    .local v1, "flags":I
    if-ne v12, v15, :cond_12

    :try_start_4
    invoke-direct {v8, v14}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3221
    or-int/lit8 v1, v1, 0x20

    .line 3224
    if-eqz v3, :cond_11

    .line 3225
    iget v0, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v0, v15, :cond_10

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 3226
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3227
    invoke-direct {v8, v14}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    move v3, v0

    move v4, v1

    .end local v3    # "index":I
    .local v0, "index":I
    goto :goto_5

    .line 3229
    .end local v0    # "index":I
    .restart local v3    # "index":I
    :cond_10
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v0

    move v4, v1

    .end local v3    # "index":I
    .restart local v0    # "index":I
    goto :goto_5

    .line 3224
    .end local v0    # "index":I
    .restart local v3    # "index":I
    :cond_11
    move v4, v1

    goto :goto_5

    .line 3256
    .end local v5    # "oldIndex":I
    :catchall_1
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_b

    .line 3234
    .restart local v5    # "oldIndex":I
    :cond_12
    move v4, v1

    .end local v1    # "flags":I
    .local v4, "flags":I
    :goto_5
    :try_start_5
    invoke-direct {v8, v12, v3, v14}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-nez v0, :cond_13

    .line 3235
    :try_start_6
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 3236
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v16, v3

    .end local v3    # "index":I
    .local v16, "index":I
    move/from16 v3, p1

    move/from16 v17, v4

    .end local v4    # "flags":I
    .local v17, "flags":I
    move/from16 v4, v16

    move/from16 v18, v5

    .end local v5    # "oldIndex":I
    .local v18, "oldIndex":I
    move/from16 v5, v17

    move-object/from16 v19, v6

    move v6, v14

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v20, v7

    move/from16 v7, v16

    goto :goto_6

    .line 3256
    .end local v18    # "oldIndex":I
    :catchall_2
    move-exception v0

    move/from16 v20, v7

    move/from16 v3, v16

    move/from16 v1, v17

    goto/16 :goto_b

    .end local v16    # "index":I
    .end local v17    # "flags":I
    .restart local v3    # "index":I
    .restart local v4    # "flags":I
    :catchall_3
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    move/from16 v1, v17

    .end local v3    # "index":I
    .end local v4    # "flags":I
    .restart local v16    # "index":I
    .restart local v17    # "flags":I
    goto/16 :goto_b

    .line 3239
    .end local v16    # "index":I
    .end local v17    # "flags":I
    .restart local v3    # "index":I
    .restart local v4    # "flags":I
    .restart local v5    # "oldIndex":I
    :cond_13
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    .end local v3    # "index":I
    .end local v4    # "flags":I
    .end local v5    # "oldIndex":I
    .restart local v16    # "index":I
    .restart local v17    # "flags":I
    .restart local v18    # "oldIndex":I
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v5, v14

    move-object/from16 v6, p5

    move/from16 v20, v7

    .end local v7    # "uid":I
    .local v20, "uid":I
    move/from16 v7, p7

    :try_start_8
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;Z)V

    .line 3240
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .end local v16    # "index":I
    .restart local v0    # "index":I
    move v7, v0

    .line 3245
    .end local v0    # "index":I
    .local v7, "index":I
    :goto_6
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v0, :cond_14

    if-ne v12, v15, :cond_14

    :try_start_a
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 3246
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    and-int/lit8 v0, v17, 0x40

    if-nez v0, :cond_14

    .line 3248
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 3250
    .local v0, "newIndex":I
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume postSetAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_7

    .line 3256
    .end local v0    # "newIndex":I
    .end local v18    # "oldIndex":I
    :catchall_4
    move-exception v0

    move v3, v7

    move/from16 v1, v17

    goto/16 :goto_b

    .restart local v18    # "oldIndex":I
    :cond_14
    :goto_7
    :try_start_b
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 3257
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3258
    if-ne v12, v15, :cond_15

    move/from16 v15, v18

    .end local v18    # "oldIndex":I
    .local v15, "oldIndex":I
    if-eq v15, v7, :cond_16

    .line 3260
    const/4 v0, 0x0

    :try_start_c
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_8

    .line 3262
    :catchall_5
    move-exception v0

    move/from16 v16, v7

    goto/16 :goto_a

    .line 3258
    .end local v15    # "oldIndex":I
    .restart local v18    # "oldIndex":I
    :cond_15
    move/from16 v15, v18

    .line 3262
    .end local v18    # "oldIndex":I
    .restart local v15    # "oldIndex":I
    :cond_16
    :goto_8
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 3263
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v15

    move v4, v7

    move/from16 v5, v17

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 3266
    const/4 v0, 0x6

    if-ne v9, v0, :cond_18

    const/16 v0, 0x10

    if-eq v14, v0, :cond_18

    new-instance v0, Ljava/lang/String;

    const-string v1, "com.android.bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStreamVolume update volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for bt sco device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    const/16 v5, 0x10

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, v17

    move-object/from16 v6, p5

    move/from16 v16, v7

    .end local v7    # "index":I
    .restart local v16    # "index":I
    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;Z)V

    .line 3273
    const/16 v6, 0x10

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    goto :goto_9

    .line 3268
    .end local v16    # "index":I
    .restart local v7    # "index":I
    :cond_17
    move/from16 v16, v7

    .end local v7    # "index":I
    .restart local v16    # "index":I
    goto :goto_9

    .line 3266
    .end local v16    # "index":I
    .restart local v7    # "index":I
    :cond_18
    move/from16 v16, v7

    .line 3276
    .end local v7    # "index":I
    .restart local v16    # "index":I
    :goto_9
    return-void

    .line 3262
    .end local v16    # "index":I
    .restart local v7    # "index":I
    :catchall_6
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "index":I
    .restart local v16    # "index":I
    :goto_a
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_a

    .line 3256
    .end local v15    # "oldIndex":I
    .end local v16    # "index":I
    .restart local v7    # "index":I
    :catchall_8
    move-exception v0

    move/from16 v16, v7

    move/from16 v3, v16

    move/from16 v1, v17

    .end local v7    # "index":I
    .restart local v16    # "index":I
    goto :goto_b

    :catchall_9
    move-exception v0

    move/from16 v3, v16

    move/from16 v1, v17

    goto :goto_b

    .end local v16    # "index":I
    .end local v17    # "flags":I
    .end local v20    # "uid":I
    .restart local v3    # "index":I
    .restart local v4    # "flags":I
    .local v7, "uid":I
    :catchall_a
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    move/from16 v1, v17

    .end local v3    # "index":I
    .end local v4    # "flags":I
    .end local v7    # "uid":I
    .restart local v16    # "index":I
    .restart local v17    # "flags":I
    .restart local v20    # "uid":I
    goto :goto_b

    .end local v16    # "index":I
    .end local v17    # "flags":I
    .end local v20    # "uid":I
    .restart local v3    # "index":I
    .restart local v7    # "uid":I
    .restart local p3    # "flags":I
    :catchall_b
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    .end local v7    # "uid":I
    .end local p3    # "flags":I
    .restart local v1    # "flags":I
    .restart local v20    # "uid":I
    :goto_b
    :try_start_f
    monitor-exit v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_b
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;Z)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "hasModifyAudioSettings"    # Z

    .line 3489
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3490
    return-void

    .line 3492
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 3494
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    .line 3497
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3505
    :cond_2
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 3508
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3510
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3512
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3514
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3515
    nop

    .line 3516
    .end local v1    # "token":J
    monitor-exit v0

    .line 3517
    return-void

    .line 3514
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3515
    nop

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "state":Z
    throw v3

    .line 3509
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "state":Z
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3516
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 4
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .line 2634
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    if-eq p1, p2, :cond_1

    and-int/lit16 v1, p4, 0x100

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2643
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2645
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2647
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    nop

    .line 2649
    .end local v1    # "token":J
    monitor-exit v0

    .line 2650
    return-void

    .line 2647
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    nop

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "oldVolume":I
    .end local p2    # "newVolume":I
    .end local p3    # "maxVolume":I
    .end local p4    # "flags":I
    throw v3

    .line 2641
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "oldVolume":I
    .restart local p2    # "newVolume":I
    .restart local p3    # "maxVolume":I
    .restart local p4    # "flags":I
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 2649
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private shouldZenMuteStream(I)Z
    .locals 8
    .param p1, "streamType"    # I

    .line 5475
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 5476
    return v1

    .line 5479
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 5480
    .local v0, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 5482
    .local v3, "muteAlarms":Z
    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 5484
    .local v4, "muteMedia":Z
    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    .line 5486
    .local v5, "muteSystem":Z
    :goto_2
    nop

    .line 5487
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 5488
    .local v6, "muteNotificationAndRing":Z
    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    .line 5489
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    .line 5490
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    .line 5491
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    nop

    .line 5488
    :goto_3
    return v1
.end method

.method private unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9686
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9687
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 9686
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 9688
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9690
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_0

    .line 9691
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9692
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9691
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9693
    monitor-exit v0

    return-void

    .line 9695
    :cond_0
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9697
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 9698
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 9700
    return-void

    .line 9698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .locals 4
    .param p1, "a11VolEnabled"    # Z

    .line 8912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accessibility volume enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8913
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1

    .line 8914
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8916
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 8918
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8919
    goto :goto_0

    .line 8920
    :cond_0
    move v0, v3

    .line 8918
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 8921
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 8923
    :cond_1
    return-void
.end method

.method private updateAssistantUId(Z)V
    .locals 8
    .param p1, "forceUpdate"    # Z

    .line 1824
    const/4 v0, 0x0

    .line 1831
    .local v0, "assistantUid":I
    const-string v1, ""

    .line 1832
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    if-eqz v2, :cond_0

    .line 1833
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$RoleObserver;->getAssistantRoleHolder()Ljava/lang/String;

    move-result-object v1

    .line 1835
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AS.AudioService"

    if-eqz v2, :cond_3

    .line 1836
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "voice_interaction_service"

    const/4 v5, -0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1839
    .local v2, "assistantName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1840
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assistant"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1844
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1845
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1846
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_2

    .line 1847
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid service name for voice_interaction_service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-void

    .line 1851
    :cond_2
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1854
    .end local v2    # "assistantName":Ljava/lang/String;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1855
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1856
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1857
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1859
    .local v4, "am":Landroid/app/ActivityManager;
    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1862
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1866
    goto :goto_0

    .line 1863
    :catch_0
    move-exception v5

    .line 1864
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAssistantUId() could not find UID for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_6

    .line 1871
    :cond_5
    invoke-static {v0}, Landroid/media/AudioSystem;->setAssistantUid(I)I

    .line 1872
    iput v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    .line 1874
    :cond_6
    return-void
.end method

.method private updateAudioHalPids()V
    .locals 3

    .line 10612
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioHalPids()Ljava/util/Set;

    move-result-object v0

    .line 10613
    .local v0, "pidsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10614
    const-string v1, "AS.AudioService"

    const-string v2, "Could not retrieve audio HAL service pids"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10615
    return-void

    .line 10617
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/audio/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 10618
    .local v1, "pidsArray":[I
    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioHalPids([I)I

    .line 10619
    return-void
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .locals 2
    .param p1, "touchExploreEnabled"    # Z

    .line 8890
    if-eqz p1, :cond_0

    .line 8891
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_0

    .line 8893
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 8895
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch exploration enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " stream override delay is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8897
    return-void
.end method

.method private updateDefaultVolumes()V
    .locals 5

    .line 1599
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1600
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_0

    .line 1601
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v0

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 1599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    .end local v0    # "stream":I
    :cond_1
    return-void
.end method

.method private updateFlagsForTvPlatform(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 3449
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-eqz v1, :cond_2

    .line 3452
    :cond_1
    and-int/lit8 p1, p1, -0x2

    .line 3454
    :cond_2
    monitor-exit v0

    .line 3455
    return p1

    .line 3454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateHdmiCecSinkLocked(Z)V
    .locals 3
    .param p1, "hdmiCecSink"    # Z

    .line 8757
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 8758
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->hasDeviceVolumeBehavior(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8759
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    const-string v2, "AS.AudioService"

    if-eqz v1, :cond_0

    .line 8761
    const-string v1, "CEC sink: setting HDMI as full vol device"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8763
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFullVolumeDevices(I)V

    goto :goto_0

    .line 8766
    :cond_0
    const-string v1, "TV, no CEC: setting HDMI as regular vol device"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8770
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    .line 8774
    :cond_1
    :goto_0
    const-string v1, "HdmiPlaybackClient.DisplayStatusCallback"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    .line 8776
    return-void
.end method

.method private updateHeadsetProfileStatus()V
    .locals 5

    .line 7978
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_auto_play"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    .line 7980
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_call_information_broadcast"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 7982
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_notification_ringtone"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 7985
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-ne v0, v1, :cond_0

    .line 7986
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 7987
    :cond_0
    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 7989
    :cond_1
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 7991
    :cond_2
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7993
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHeadsetProfileStatus HeadsetNotication "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Force for notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7994
    return-void
.end method

.method private updateHearingAidVolumeOnVoiceActivityUpdate()V
    .locals 6

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    .line 3021
    .local v0, "streamType":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 3022
    .local v1, "index":I
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3023
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IZII)V

    .line 3022
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3024
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v1, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 3026
    return-void
.end method

.method private updateMasterBalance(Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1721
    const-string/jumbo v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1724
    .local v0, "masterBalance":F
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Master balance %f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterBalance(F)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1727
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "setMasterBalance failed for %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    return-void
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1712
    const-string/jumbo v0, "master_mono"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1715
    .local v0, "masterMono":Z
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Master mono %b"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1718
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .locals 6

    .line 5554
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 5555
    .local v0, "updatedZenModeAffectedStreams":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 5561
    .local v1, "ringerModeAffectedStreams":I
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v3, :cond_0

    .line 5562
    const/4 v1, 0x0

    goto :goto_0

    .line 5563
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v3, :cond_1

    .line 5564
    nop

    .line 5565
    invoke-interface {v3, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 5567
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v3, :cond_2

    .line 5568
    and-int/lit16 v1, v1, -0x81

    goto :goto_1

    .line 5570
    :cond_2
    or-int/lit16 v1, v1, 0x80

    .line 5572
    :goto_1
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v5, 0x8

    aget v3, v3, v5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 5573
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 5575
    :cond_3
    and-int/lit16 v1, v1, -0x101

    .line 5578
    :goto_2
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v3, :cond_4

    .line 5579
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5583
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5584
    const/4 v2, 0x1

    return v2

    .line 5586
    :cond_4
    return v0
.end method

.method private updateStatusForRingtone()V
    .locals 6

    .line 8025
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isBluetoothA2dpDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 8026
    .local v0, "isHeadsetOn":Z
    :goto_1
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/16 v4, 0x8

    if-eq v3, v2, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    .line 8028
    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8029
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 8030
    .local v2, "device":I
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceStreamVolume(II)I

    move-result v3

    .line 8031
    .local v3, "volume":I
    if-eqz v3, :cond_3

    .line 8032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateStatusForRingtone() set device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " volume to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8033
    invoke-static {v1, v3, v2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 8035
    .end local v2    # "device":I
    .end local v3    # "volume":I
    :cond_3
    goto :goto_2

    .line 8036
    :cond_4
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8038
    :goto_2
    return-void
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 24
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 1623
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v0, :cond_0

    .line 1624
    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    .line 1625
    .local v5, "a11yStreamAlias":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11100f5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v6, 0xb

    if-eqz v0, :cond_1

    .line 1627
    move v3, v6

    goto :goto_1

    :cond_1
    nop

    .line 1629
    .local v3, "assistantStreamAlias":I
    :goto_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_2

    .line 1630
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1631
    const/4 v0, 0x3

    .local v0, "dtmfStreamAlias":I
    goto :goto_2

    .line 1633
    .end local v0    # "dtmfStreamAlias":I
    :cond_2
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    .line 1639
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1640
    const/4 v0, 0x3

    .restart local v0    # "dtmfStreamAlias":I
    goto :goto_2

    .line 1635
    .end local v0    # "dtmfStreamAlias":I
    :cond_3
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1636
    const/4 v0, 0x2

    .line 1637
    .restart local v0    # "dtmfStreamAlias":I
    nop

    .line 1644
    :goto_2
    iget-boolean v7, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 1645
    iput v8, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_3

    .line 1647
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1648
    const/4 v0, 0x0

    .line 1649
    iget v7, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v7, v7, -0x101

    iput v7, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    move v7, v0

    goto :goto_4

    .line 1651
    :cond_5
    iget v7, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1655
    :goto_3
    move v7, v0

    .end local v0    # "dtmfStreamAlias":I
    .local v7, "dtmfStreamAlias":I
    :goto_4
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v9, 0x8

    aput v7, v0, v9

    .line 1656
    aput v5, v0, v4

    .line 1657
    aput v3, v0, v6

    .line 1659
    if-eqz p1, :cond_7

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_7

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1662
    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1663
    :try_start_0
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1664
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v11, v7

    .line 1665
    invoke-virtual {v0, v11, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1666
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v11, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-static {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1668
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v11, v5

    invoke-virtual {v0, v11, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1670
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1672
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_6

    .line 1674
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1678
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1679
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v9

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1685
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v18, 0xa

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v6, v4

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    .line 1670
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "assistantStreamAlias":I
    .end local v5    # "a11yStreamAlias":I
    .end local v7    # "dtmfStreamAlias":I
    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "updateVolumes":Z
    .end local p2    # "caller":Ljava/lang/String;
    :try_start_4
    throw v0

    .line 1671
    .restart local v3    # "assistantStreamAlias":I
    .restart local v5    # "a11yStreamAlias":I
    .restart local v7    # "dtmfStreamAlias":I
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "updateVolumes":Z
    .restart local p2    # "caller":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1692
    :cond_7
    :goto_5
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .locals 6

    .line 5509
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5510
    return v1

    .line 5513
    :cond_0
    const/4 v0, 0x0

    .line 5514
    .local v0, "zenModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    .line 5516
    .local v2, "zenMode":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 5517
    or-int/lit8 v0, v0, 0x10

    .line 5518
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 5519
    :cond_1
    if-ne v2, v3, :cond_5

    .line 5520
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 5521
    .local v4, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_2

    .line 5523
    or-int/lit8 v0, v0, 0x10

    .line 5526
    :cond_2
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_3

    .line 5528
    or-int/lit8 v0, v0, 0x8

    .line 5533
    :cond_3
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    .line 5535
    or-int/lit8 v0, v0, 0x2

    .line 5538
    :cond_4
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5539
    or-int/lit8 v0, v0, 0x20

    .line 5540
    or-int/lit8 v0, v0, 0x4

    .line 5544
    .end local v4    # "zenPolicy":Landroid/app/NotificationManager$Policy;
    :cond_5
    :goto_0
    iget v4, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v4, v0, :cond_6

    .line 5545
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 5546
    return v3

    .line 5549
    :cond_6
    return v1
.end method

.method private validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 8378
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    .line 8379
    .local v0, "usage":I
    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8380
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8381
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isSupportedSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8382
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8383
    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8386
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8389
    :cond_2
    :goto_0
    return-void
.end method

.method private verifySystemUsages([I)V
    .locals 4
    .param p1, "systemUsages"    # [I

    .line 1451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1452
    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system usage provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1456
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 3
    .param p1, "streamTypeAlias"    # I
    .param p2, "flags"    # I

    .line 3306
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 3317
    return v1

    .line 3312
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3313
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_2

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 3312
    :goto_1
    return v1
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .line 1415
    monitor-enter p0

    .line 1416
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1419
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    goto :goto_0

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AS.AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1424
    :cond_0
    monitor-exit p0

    .line 1425
    return-void

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "delay_ms"    # I

    .line 5642
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5643
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5642
    :goto_1
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .locals 2
    .param p1, "newMode"    # I

    .line 2712
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2714
    return v1

    .line 2715
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2717
    return v1

    .line 2719
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 3
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 8460
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 8461
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 8462
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 8463
    const-string v2, "abandonAudioFocus"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 8465
    .local v0, "mmi":Landroid/media/MediaMetrics$Item;
    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8466
    const-string v1, "AS.AudioService"

    const-string v2, "Request using unsupported usage."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8467
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "unsupported usage"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8469
    const/4 v1, 0x0

    return v1

    .line 8471
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8472
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9733
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9734
    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 9735
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9736
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 9737
    monitor-exit v0

    return v2

    .line 9739
    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    .line 9740
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 9739
    return v2

    .line 9741
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 2291
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2297
    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2299
    .local v8, "hasModifyAudioSettings":Z
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2301
    nop

    .line 2302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    .line 2301
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 2303
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 29
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "hasModifyAudioSettings"    # Z
    .param p8, "keyEventMode"    # I

    .line 2308
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p5

    move/from16 v11, p8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_0

    .line 2312
    return-void

    .line 2315
    :cond_0
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 2316
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2318
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v12

    .line 2320
    .local v12, "isMuteAdjust":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2321
    return-void

    .line 2326
    :cond_1
    if-eqz v12, :cond_3

    if-eqz v9, :cond_2

    const/4 v2, 0x6

    if-ne v9, v2, :cond_3

    :cond_2
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2329
    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2332
    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    return-void

    .line 2339
    :cond_3
    const/16 v2, 0xb

    if-ne v9, v2, :cond_4

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2340
    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_AUDIO_ROUTING Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2343
    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    return-void

    .line 2351
    :cond_4
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v2, v9

    .line 2353
    .local v15, "streamTypeAlias":I
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v2, v15

    .line 2355
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    .line 2357
    .local v13, "device":I
    invoke-virtual {v14, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2358
    .local v2, "aliasIndex":I
    const/16 v16, 0x1

    .line 2363
    .local v16, "adjustVolume":Z
    const/4 v7, 0x1

    new-array v3, v7, [I

    const/16 v4, 0x8a

    const/4 v6, 0x0

    aput v4, v3, v6

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v4, -0x1

    const/16 v6, 0xa

    const/4 v5, 0x2

    if-eqz v3, :cond_d

    .line 2364
    if-ne v15, v5, :cond_c

    if-eqz v10, :cond_c

    new-instance v3, Ljava/lang/String;

    const-string v5, "android.media.cts"

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2366
    if-ne v0, v4, :cond_5

    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    mul-int/2addr v3, v6

    if-le v2, v3, :cond_6

    :cond_5
    if-ne v0, v7, :cond_7

    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    mul-int/2addr v3, v6

    if-lt v2, v3, :cond_7

    .line 2368
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume range fixed to ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] by system"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AS.AudioService"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v0, 0x0

    .line 2372
    .end local p2    # "direction":I
    .local v0, "direction":I
    :cond_7
    const/16 v5, -0x64

    if-eq v0, v5, :cond_9

    const/16 v3, 0x64

    if-ne v0, v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v0

    goto :goto_3

    .line 2373
    :cond_9
    :goto_0
    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v3, v7, :cond_a

    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    move v3, v0

    :goto_1
    move v0, v3

    goto :goto_3

    .line 2365
    .end local v0    # "direction":I
    .restart local p2    # "direction":I
    :cond_b
    const/16 v5, -0x64

    goto :goto_2

    .line 2364
    :cond_c
    const/16 v5, -0x64

    goto :goto_2

    .line 2363
    :cond_d
    const/16 v5, -0x64

    .line 2380
    :goto_2
    move v3, v0

    .end local p2    # "direction":I
    .local v3, "direction":I
    :goto_3
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_e

    .line 2382
    return-void

    .line 2387
    :cond_e
    const/16 v0, 0x3e8

    move/from16 v4, p6

    if-ne v4, v0, :cond_f

    .line 2388
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v0, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v5, v0

    .end local p6    # "uid":I
    .local v0, "uid":I
    goto :goto_4

    .line 2387
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_f
    move v5, v4

    .line 2390
    .end local p6    # "uid":I
    .local v5, "uid":I
    :goto_4
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v15

    move-object/from16 v7, p4

    invoke-virtual {v0, v4, v5, v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2392
    return-void

    .line 2396
    :cond_10
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2397
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2398
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2400
    and-int/lit8 v0, v1, -0x21

    .line 2401
    .end local p3    # "flags":I
    .local v0, "flags":I
    const/4 v4, 0x3

    if-ne v15, v4, :cond_13

    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2402
    or-int/lit8 v0, v0, 0x20

    .line 2407
    iget v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v1, v4, :cond_11

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    .line 2408
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2409
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    .local v1, "step":I
    goto :goto_5

    .line 2411
    .end local v1    # "step":I
    :cond_11
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2413
    .restart local v1    # "step":I
    :goto_5
    if-eqz v2, :cond_12

    .line 2414
    move v2, v1

    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_6

    .line 2413
    :cond_12
    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_6

    .line 2418
    .end local v1    # "step":I
    :cond_13
    invoke-direct {v8, v6, v9, v15}, Lcom/android/server/audio/AudioService;->rescaleStep(III)I

    move-result v1

    move/from16 v23, v1

    move/from16 v24, v2

    .line 2423
    .end local v2    # "aliasIndex":I
    .local v23, "step":I
    .local v24, "aliasIndex":I
    :goto_6
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_15

    .line 2424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v15, v1, :cond_14

    goto :goto_7

    :cond_14
    move v7, v0

    move/from16 p2, v3

    move/from16 v26, v5

    const/4 v10, 0x2

    goto :goto_9

    .line 2425
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v6

    .line 2427
    .local v6, "ringerMode":I
    const/4 v2, 0x1

    if-ne v6, v2, :cond_16

    .line 2428
    and-int/lit8 v0, v0, -0x11

    .line 2432
    :cond_16
    nop

    .line 2433
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v21

    .line 2432
    move-object/from16 v1, p0

    move/from16 v22, v2

    move/from16 v2, v24

    move/from16 p2, v3

    .end local v3    # "direction":I
    .restart local p2    # "direction":I
    move v10, v4

    move/from16 v4, v23

    move/from16 v26, v5

    const/4 v10, 0x2

    .end local v5    # "uid":I
    .local v26, "uid":I
    move/from16 v5, v21

    move/from16 v17, v6

    .end local v6    # "ringerMode":I
    .local v17, "ringerMode":I
    move-object/from16 v6, p4

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    .line 2434
    .local v1, "result":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_17

    const/4 v7, 0x1

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    :goto_8
    move/from16 v16, v7

    .line 2436
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_18

    .line 2437
    or-int/lit16 v0, v0, 0x80

    .line 2440
    :cond_18
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_19

    .line 2441
    or-int/lit16 v0, v0, 0x800

    move v7, v0

    goto :goto_9

    .line 2440
    :cond_19
    move v7, v0

    .line 2447
    .end local v0    # "flags":I
    .end local v1    # "result":I
    .end local v17    # "ringerMode":I
    .local v7, "flags":I
    :goto_9
    invoke-direct {v8, v15, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2448
    const/16 v16, 0x0

    move/from16 v27, v16

    goto :goto_a

    .line 2447
    :cond_1a
    move/from16 v27, v16

    .line 2450
    .end local v16    # "adjustVolume":Z
    .local v27, "adjustVolume":Z
    :goto_a
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2452
    .local v6, "oldIndex":I
    const/16 v0, 0x65

    if-eqz v27, :cond_2d

    move/from16 v5, p2

    .end local p2    # "direction":I
    .local v5, "direction":I
    if-eqz v5, :cond_2c

    if-eq v11, v10, :cond_2c

    .line 2454
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 2456
    if-eqz v12, :cond_21

    .line 2458
    if-ne v5, v0, :cond_1b

    .line 2459
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .local v1, "state":Z
    goto :goto_b

    .line 2461
    .end local v1    # "state":Z
    :cond_1b
    const/4 v2, 0x1

    const/16 v1, -0x64

    if-ne v5, v1, :cond_1c

    move v1, v2

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    .line 2463
    .restart local v1    # "state":Z
    :goto_b
    const/4 v3, 0x3

    if-ne v15, v3, :cond_1d

    .line 2464
    invoke-direct {v8, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2466
    :cond_1d
    const/4 v4, 0x0

    .local v4, "stream":I
    :goto_c
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v4, v3, :cond_20

    .line 2467
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v4

    if-ne v15, v3, :cond_1f

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v4

    .line 2469
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v3

    const/4 v10, 0x7

    if-eq v3, v10, :cond_1f

    .line 2471
    :cond_1e
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    .line 2466
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x3

    const/4 v10, 0x2

    goto :goto_c

    .line 2475
    .end local v1    # "state":Z
    .end local v4    # "stream":I
    :cond_20
    move-object/from16 v10, p5

    move/from16 v4, p7

    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v1, 0x3

    const/4 v3, -0x1

    goto/16 :goto_f

    :cond_21
    const/4 v2, 0x1

    if-ne v5, v2, :cond_22

    add-int v1, v24, v23

    .line 2476
    invoke-direct {v8, v15, v1, v13}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AS.AudioService"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    move-object/from16 v10, p5

    move/from16 v4, p7

    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v1, 0x3

    const/4 v3, -0x1

    goto/16 :goto_f

    .line 2479
    :cond_22
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v1

    if-nez v1, :cond_29

    mul-int v3, v5, v23

    .line 2480
    move-object/from16 v10, p5

    move/from16 v4, p7

    const/4 v1, 0x3

    invoke-virtual {v14, v3, v13, v10, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_24

    .line 2482
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_d

    :cond_23
    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v3, -0x1

    goto/16 :goto_f

    .line 2485
    :cond_24
    :goto_d
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2487
    if-ne v5, v2, :cond_25

    .line 2489
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v3, -0x1

    goto :goto_e

    .line 2490
    :cond_25
    const/4 v3, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_27

    .line 2491
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_26

    .line 2492
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0x12

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x15e

    move/from16 p6, v13

    .end local v13    # "device":I
    .local p6, "device":I
    move-object v13, v0

    move-object/from16 v25, v14

    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v25, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move/from16 v14, v16

    move/from16 v28, v15

    .end local v15    # "streamTypeAlias":I
    .local v28, "streamTypeAlias":I
    move/from16 v15, v17

    move/from16 v16, v28

    move/from16 v17, v7

    invoke-static/range {v13 .. v19}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_e

    .line 2491
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v28    # "streamTypeAlias":I
    .end local p6    # "device":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_26
    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "streamTypeAlias":I
    .restart local p6    # "device":I
    goto :goto_e

    .line 2490
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v28    # "streamTypeAlias":I
    .end local p6    # "device":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_27
    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "streamTypeAlias":I
    .restart local p6    # "device":I
    goto :goto_e

    .line 2485
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v28    # "streamTypeAlias":I
    .end local p6    # "device":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_28
    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v3, -0x1

    .line 2497
    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "streamTypeAlias":I
    .restart local p6    # "device":I
    :goto_e
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move/from16 v19, p6

    move-object/from16 v21, v25

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 2479
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v28    # "streamTypeAlias":I
    .end local p6    # "device":I
    .restart local v13    # "device":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_29
    move-object/from16 v10, p5

    move/from16 v4, p7

    move/from16 p6, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    const/4 v1, 0x3

    const/4 v3, -0x1

    .line 2506
    .end local v13    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "streamTypeAlias":I
    .restart local p6    # "device":I
    :goto_f
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    move/from16 v13, p6

    .end local p6    # "device":I
    .restart local v13    # "device":I
    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 2509
    .local v0, "newIndex":I
    move/from16 v14, v28

    .end local v28    # "streamTypeAlias":I
    .local v14, "streamTypeAlias":I
    if-ne v14, v1, :cond_2a

    sget-object v15, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 2510
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    and-int/lit8 v2, v7, 0x40

    if-nez v2, :cond_2a

    .line 2513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adjustSreamVolume: postSetAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "stream="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "AS.AudioService"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v15, v0, 0xa

    invoke-virtual {v2, v15}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 2520
    :cond_2a
    const/high16 v2, 0x8000000

    if-ne v13, v2, :cond_2b

    .line 2523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v2

    if-ne v9, v2, :cond_2b

    .line 2525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adjustSreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " stream="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "AS.AudioService"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2533
    :cond_2b
    if-ne v14, v1, :cond_2e

    .line 2534
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    invoke-direct {v8, v6, v0, v2, v7}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    goto :goto_10

    .line 2452
    .end local v0    # "newIndex":I
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_2c
    move-object/from16 v10, p5

    move/from16 v4, p7

    move-object/from16 v25, v14

    move v14, v15

    const/4 v1, 0x3

    const/4 v3, -0x1

    .end local v15    # "streamTypeAlias":I
    .local v14, "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    goto :goto_10

    .end local v5    # "direction":I
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    .restart local p2    # "direction":I
    :cond_2d
    move/from16 v5, p2

    move-object/from16 v10, p5

    move/from16 v4, p7

    move-object/from16 v25, v14

    move v14, v15

    const/4 v1, 0x3

    const/4 v3, -0x1

    .line 2538
    .end local v15    # "streamTypeAlias":I
    .end local p2    # "direction":I
    .restart local v5    # "direction":I
    .local v14, "streamTypeAlias":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_2e
    :goto_10
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v15

    .line 2540
    .local v15, "newIndex":I
    if-eqz v27, :cond_38

    .line 2541
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2542
    :try_start_1
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_37

    .line 2544
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v0, :cond_35

    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-eqz v0, :cond_35

    if-ne v14, v1, :cond_35

    .line 2548
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2549
    const/4 v0, 0x0

    .line 2550
    .local v0, "keyCode":I
    if-eq v5, v3, :cond_31

    const/4 v3, 0x1

    if-eq v5, v3, :cond_30

    const/16 v3, 0x65

    if-eq v5, v3, :cond_2f

    move v3, v0

    goto :goto_11

    .line 2558
    :cond_2f
    const/16 v0, 0xa4

    .line 2559
    move v3, v0

    goto :goto_11

    .line 2552
    :cond_30
    const/16 v0, 0x18

    .line 2553
    move v3, v0

    goto :goto_11

    .line 2555
    :cond_31
    const/16 v0, 0x19

    .line 2556
    move v3, v0

    .line 2563
    .end local v0    # "keyCode":I
    .local v3, "keyCode":I
    :goto_11
    if-eqz v3, :cond_35

    .line 2564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2566
    .local v16, "ident":J
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2567
    .local v18, "time":J
    if-eqz v11, :cond_34

    const/4 v0, 0x1

    if-eq v11, v0, :cond_33

    const/4 v0, 0x2

    if-eq v11, v0, :cond_32

    .line 2579
    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid keyEventMode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2576
    :cond_32
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    .line 2577
    goto :goto_12

    .line 2573
    :cond_33
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    .line 2574
    goto :goto_12

    .line 2569
    :cond_34
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    .line 2570
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2571
    nop

    .line 2582
    .end local v18    # "time":J
    :goto_12
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    goto :goto_13

    .line 2582
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    nop

    .end local v5    # "direction":I
    .end local v6    # "oldIndex":I
    .end local v7    # "flags":I
    .end local v12    # "isMuteAdjust":Z
    .end local v13    # "device":I
    .end local v14    # "streamTypeAlias":I
    .end local v15    # "newIndex":I
    .end local v23    # "step":I
    .end local v24    # "aliasIndex":I
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v26    # "uid":I
    .end local v27    # "adjustVolume":Z
    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "streamType":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "caller":Ljava/lang/String;
    .end local p7    # "hasModifyAudioSettings":Z
    .end local p8    # "keyEventMode":I
    throw v0

    .line 2587
    .end local v3    # "keyCode":I
    .end local v16    # "ident":J
    .restart local v5    # "direction":I
    .restart local v6    # "oldIndex":I
    .restart local v7    # "flags":I
    .restart local v12    # "isMuteAdjust":Z
    .restart local v13    # "device":I
    .restart local v14    # "streamTypeAlias":I
    .restart local v15    # "newIndex":I
    .restart local v23    # "step":I
    .restart local v24    # "aliasIndex":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v26    # "uid":I
    .restart local v27    # "adjustVolume":Z
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "streamType":I
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "caller":Ljava/lang/String;
    .restart local p7    # "hasModifyAudioSettings":Z
    .restart local p8    # "keyEventMode":I
    :cond_35
    :goto_13
    const/4 v0, 0x3

    if-ne v14, v0, :cond_37

    if-ne v6, v15, :cond_36

    if-eqz v12, :cond_37

    .line 2589
    :cond_36
    invoke-direct {v8, v12}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V

    .line 2592
    :cond_37
    monitor-exit v2

    goto :goto_14

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2594
    :cond_38
    :goto_14
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move v4, v15

    move/from16 v17, v5

    .end local v5    # "direction":I
    .local v17, "direction":I
    move v5, v7

    move/from16 v16, v6

    .end local v6    # "oldIndex":I
    .local v16, "oldIndex":I
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2595
    return-void

    .line 2398
    .end local v7    # "flags":I
    .end local v17    # "direction":I
    .end local v23    # "step":I
    .end local v24    # "aliasIndex":I
    .end local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v26    # "uid":I
    .end local v27    # "adjustVolume":Z
    .restart local v2    # "aliasIndex":I
    .local v3, "direction":I
    .local v5, "uid":I
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v15, "streamTypeAlias":I
    .local v16, "adjustVolume":Z
    .restart local p3    # "flags":I
    :catchall_2
    move-exception v0

    move/from16 v17, v3

    move/from16 v26, v5

    move-object/from16 v25, v14

    move v14, v15

    .end local v3    # "direction":I
    .end local v5    # "uid":I
    .end local v15    # "streamTypeAlias":I
    .local v14, "streamTypeAlias":I
    .restart local v17    # "direction":I
    .restart local v25    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v26    # "uid":I
    :goto_15
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_15
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 2169
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2170
    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2172
    .local v8, "hasModifyAudioSettings":Z
    nop

    .line 2173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    .line 2172
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 2174
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .line 8043
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcpSupportsAbsoluteVolume addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " support="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8045
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 8046
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 8047
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v6, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8050
    return-void
.end method

.method public cancelAutoPlayback()V
    .locals 8

    .line 2930
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 2933
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    if-eqz v0, :cond_1

    .line 2934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 2935
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    iget v4, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v6, "RevertMusicVolBeforeGradienting"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2937
    :cond_1
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 5918
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5920
    const/4 v0, 0x1

    return v0

    .line 5922
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5923
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5925
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    const/4 v1, 0x0

    return v1
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .locals 8
    .param p1, "deviceType"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 8075
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8076
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8084
    :cond_0
    return-void
.end method

.method public disableRingtoneSync(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 9970
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9971
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_0

    .line 9972
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9975
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9978
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9981
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9982
    nop

    .line 9983
    return-void

    .line 9981
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9982
    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 8722
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8723
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8724
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 8725
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_1

    .line 8726
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;Z)V

    .line 8733
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isEUVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 8734
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8735
    const-string v1, "AS.AudioService"

    const-string v2, "disableSafeMediaVolume() set pending volume for Abs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8736
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 8739
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8741
    :cond_1
    monitor-exit v0

    .line 8742
    return-void

    .line 8741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 10484
    if-eqz p1, :cond_2

    .line 10487
    if-eqz p3, :cond_1

    .line 10490
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 10491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10494
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 10492
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "afi":Landroid/media/AudioFocusInfo;
    .end local p2    # "focusChange":I
    .end local p3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    throw v1

    .line 10495
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "afi":Landroid/media/AudioFocusInfo;
    .restart local p2    # "focusChange":I
    .restart local p3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10488
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10485
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 9026
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AS.AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9028
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v1, "  "

    if-eqz v0, :cond_1

    .line 9029
    const-string v0, "\nMessage handler (watch for unhandled messages):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9030
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 9032
    :cond_1
    const-string v0, "\nMessage handler is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9034
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 9035
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 9036
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpVolumeGroups(Ljava/io/PrintWriter;)V

    .line 9037
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 9038
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9039
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 9040
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 9039
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9041
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9043
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9044
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9045
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9046
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9047
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9048
    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9049
    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 9050
    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9051
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9052
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9053
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9054
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9055
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9056
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9057
    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9058
    const-string v0, "  mIsSingleVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9059
    const-string v0, "  mUseFixedVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9060
    const-string v0, "  mFixedVolumeDevices="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->dumpDeviceTypes(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9061
    const-string v0, "  mExtVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9062
    const-string v0, "  mHdmiCecSink="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9063
    const-string v0, "  mHdmiAudioSystemClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9064
    const-string v0, "  mHdmiPlaybackClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9065
    const-string v0, "  mHdmiTvClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9066
    const-string v0, "  mHdmiSystemAudioSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9067
    const-string v0, "  mHdmiCecVolumeControlEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9068
    const-string v0, "  mIsCallScreeningModeSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mic mute FromSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FromRestrictions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FromApi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " from system="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9073
    const-string v0, "  mMonitorRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9075
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 9076
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 9077
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 9078
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 9080
    const-string v0, "\nAudioDeviceBroker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9081
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9082
    const-string v0, "\nSoundEffects:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9083
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9085
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9086
    const-string v1, "\nEvent logs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9087
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 9088
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9089
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 9090
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9091
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 9092
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9093
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 9094
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9095
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpSupportedSystemUsage(Ljava/io/PrintWriter;)V

    .line 9096
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 3592
    if-nez p2, :cond_0

    .line 3593
    return-void

    .line 3595
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3597
    const-string v0, "AS.AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    return-void

    .line 3600
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3601
    const/4 v1, 0x0

    .line 3602
    .local v1, "applyRequired":Z
    const v2, 0x8000

    if-eqz p1, :cond_3

    .line 3603
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3604
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v4, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v3, :cond_2

    .line 3606
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3607
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3608
    const/4 v1, 0x1

    .line 3610
    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_0

    .line 3613
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v3, :cond_4

    .line 3614
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3615
    if-nez v3, :cond_4

    .line 3616
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3617
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3618
    const/4 v1, 0x1

    .line 3622
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 3624
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 3625
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3627
    .end local v1    # "applyRequired":Z
    :cond_5
    monitor-exit v0

    .line 3628
    return-void

    .line 3627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 3322
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    return-void

    .line 3326
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "forceVolumeControlStream(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3328
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq p1, v4, :cond_1

    .line 3329
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 3331
    :cond_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 3332
    if-ne p1, v4, :cond_3

    .line 3333
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_2

    .line 3334
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 3335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 3337
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_0

    .line 3339
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v0, :cond_4

    .line 3340
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 3342
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p2, :cond_5

    .line 3343
    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3345
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 3346
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 3350
    :goto_0
    monitor-exit v1

    .line 3351
    return-void

    .line 3350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getA2dpVolume(ZI)I
    .locals 4
    .param p1, "cmpToSafeVolume"    # Z
    .param p2, "a2dpVolume"    # I

    .line 3075
    const/4 v0, -0x1

    .line 3076
    .local v0, "cmpValue":I
    move v1, p2

    .line 3077
    .local v1, "mFinalA2dpVolume":I
    const/16 v2, 0x80

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    .line 3078
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    goto :goto_0

    .line 3080
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    .line 3083
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v2, v3, :cond_2

    .line 3084
    if-ge v1, v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    move v1, v2

    .line 3086
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpVolume() cmpValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFinalA2dpVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    return v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 10002
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 10003
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10005
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 9939
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 9940
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9942
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllowedCapturePolicy()I
    .locals 4

    .line 10107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10108
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 10109
    .local v1, "identity":J
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllowedCapturePolicy(I)I

    move-result v3

    .line 10110
    .local v3, "capturePolicy":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10111
    return v3
.end method

.method public getAudioProductStrategies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 1465
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 1466
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioVolumeGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 1476
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 1477
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoPlayFlag()Z
    .locals 1

    .line 2943
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayFlag:Z

    return v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 5108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .line 8484
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceForStream(I)I
    .locals 4
    .param p1, "stream"    # I

    .line 5970
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 5971
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 5980
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 5981
    const/4 v0, 0x2

    goto :goto_1

    .line 5982
    :cond_0
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 5983
    const/high16 v0, 0x40000

    goto :goto_1

    .line 5984
    :cond_1
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 5985
    const/high16 v0, 0x80000

    goto :goto_1

    .line 5986
    :cond_2
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 5987
    const/high16 v0, 0x200000

    goto :goto_1

    .line 5989
    :cond_3
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5990
    .local v2, "deviceType":I
    and-int v3, v2, v0

    if-ne v3, v2, :cond_4

    .line 5991
    return v2

    .line 5993
    .end local v2    # "deviceType":I
    :cond_4
    goto :goto_0

    .line 5996
    :cond_5
    :goto_1
    return v0
.end method

.method public getDeviceStreamVolume(II)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 2911
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2913
    .local v1, "index":I
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    .line 2914
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2915
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    move v1, v2

    .line 2917
    :cond_0
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v0

    return v2

    .line 2918
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 6099
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 6102
    nop

    .line 6103
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 6102
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 6104
    .local v0, "audioSystemDeviceOut":I
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceVolumeBehaviorSupportedDeviceOutSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x80

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6107
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported volume behavior "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6111
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v1

    .line 6112
    .local v1, "setDeviceVolumeBehavior":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 6113
    return v1

    .line 6118
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6119
    const/4 v2, 0x1

    return v2

    .line 6121
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6122
    const/4 v2, 0x2

    return v2

    .line 6124
    :cond_4
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6125
    const/4 v2, 0x4

    return v2

    .line 6127
    :cond_5
    if-ne v0, v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_6

    .line 6129
    const/4 v2, 0x3

    return v2

    .line 6131
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2111
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 8488
    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method getHearingAidStreamType()I
    .locals 1

    .line 2971
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 3727
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3728
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3729
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 2822
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2823
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2824
    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 2829
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2830
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2831
    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 4690
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method getModeOwnerPid()I
    .locals 3

    .line 4249
    const/4 v0, 0x0

    .line 4251
    .local v0, "modeOwnerPid":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4254
    goto :goto_0

    .line 4252
    :catch_0
    move-exception v1

    .line 4255
    :goto_0
    return v0
.end method

.method getModeOwnerUid()I
    .locals 3

    .line 4263
    const/4 v0, 0x0

    .line 4265
    .local v0, "modeOwnerUid":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4268
    goto :goto_0

    .line 4266
    :catch_0
    move-exception v1

    .line 4269
    :goto_0
    return v0
.end method

.method public getPreferredDeviceForStrategy(I)Landroid/media/AudioDeviceAttributes;
    .locals 8
    .param p1, "strategy"    # I

    .line 2072
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2073
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/media/AudioDeviceAttributes;

    .line 2074
    .local v1, "devices":[Landroid/media/AudioDeviceAttributes;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2075
    .local v2, "identity":J
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->getPreferredDeviceForStrategy(I[Landroid/media/AudioDeviceAttributes;)I

    move-result v4

    .line 2076
    .local v4, "status":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2077
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2078
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 2079
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    .line 2078
    const-string v0, "Error %d in getPreferredDeviceForStrategy(%d)"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "AS.AudioService"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v0, 0x0

    return-object v0

    .line 2082
    :cond_0
    aget-object v0, v1, v5

    return-object v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    .line 3858
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3859
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 3860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    .line 3865
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3866
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 3867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .line 8573
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 3708
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3709
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 3715
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3718
    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3720
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3722
    .local v0, "isPrivileged":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .line 3689
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3690
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3691
    .local v0, "device":I
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 3692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 3695
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3696
    const/4 v2, 0x0

    .line 3698
    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3699
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3700
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    .line 3702
    :cond_1
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v1

    return v3

    .line 3703
    .end local v2    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSupportedSystemUsages()[I
    .locals 3

    .line 1444
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 1445
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    .line 3734
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .line 4227
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4228
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 2810
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2811
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2812
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 2813
    .local v0, "volumeGroup":I
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 2816
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 2817
    .local v1, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getVolumeIndex()I

    move-result v2

    return v2

    .line 2814
    .end local v1    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No volume group for attributes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getVssVolumeForDevice(II)I
    .locals 1
    .param p1, "stream"    # I
    .param p2, "device"    # I

    .line 393
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 6247
    if-eqz p1, :cond_4

    .line 6250
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v1, 0xb

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 6251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6253
    :cond_1
    :goto_0
    if-eq p2, v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 6255
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6257
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 6259
    return-void

    .line 6248
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 6234
    if-eqz p1, :cond_0

    .line 6237
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 6238
    return-void

    .line 6235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isOnTv"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;

    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, "keyEventMode":I
    if-eqz p2, :cond_1

    .line 2127
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2128
    const/4 v0, 0x1

    goto :goto_0

    .line 2133
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 2135
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2136
    return-void

    .line 2139
    :cond_2
    :goto_0
    const/16 v11, 0x1005

    .line 2142
    .local v11, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    const/16 v2, 0x19

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_3

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return-void

    .line 2154
    :cond_3
    move-object/from16 v12, p3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 2155
    const/16 v2, 0x65

    const/high16 v3, -0x80000000

    .line 2157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2155
    move-object v1, p0

    move v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_1

    .line 2149
    :cond_4
    move-object/from16 v12, p3

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    .line 2151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x1

    .line 2149
    move-object v2, p0

    move v5, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v10, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 2152
    goto :goto_1

    .line 2144
    :cond_5
    move-object/from16 v12, p3

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    .line 2146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x1

    .line 2144
    move-object v2, p0

    move v5, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v10, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZI)V

    .line 2147
    nop

    .line 2164
    :cond_6
    :goto_1
    return-void
.end method

.method public hasAudioFocusUsers()Z
    .locals 1

    .line 8494
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method public hasHapticChannels(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 6314
    const-string v0, "haptic-channel-count"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 6316
    .local v1, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 6317
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6318
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 6319
    .local v3, "format":Landroid/media/MediaFormat;
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6320
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    .line 6321
    const/4 v0, 0x1

    return v0

    .line 6317
    .end local v3    # "format":Landroid/media/MediaFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6326
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 6324
    :catch_0
    move-exception v0

    .line 6325
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasHapticChannels failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6327
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediaDynamicPolicy()Z
    .locals 7

    .line 8059
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8060
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8061
    monitor-exit v0

    return v2

    .line 8063
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 8064
    .local v1, "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8065
    .local v4, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8067
    monitor-exit v0

    return v6

    .line 8069
    .end local v4    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_1
    goto :goto_0

    .line 8070
    :cond_2
    monitor-exit v0

    return v2

    .line 8071
    .end local v1    # "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .locals 2

    .line 9859
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9860
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 9861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initMinStreamVolumeWithoutModifyAudioSettings()V
    .locals 9

    .line 5944
    const/high16 v0, 0x400000

    .line 5945
    .local v0, "deviceForAlarm":I
    sget-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5947
    const/4 v0, 0x2

    .line 5949
    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    .line 5950
    .local v1, "idx":I
    :goto_0
    sget-object v3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v3, v3, v2

    if-lt v1, v3, :cond_2

    .line 5951
    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v3

    const/high16 v4, -0x3df00000    # -36.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 5953
    goto :goto_1

    .line 5950
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5956
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v3, v2

    if-gt v1, v4, :cond_3

    .line 5957
    aget v3, v3, v2

    goto :goto_2

    .line 5958
    :cond_3
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    nop

    .line 5960
    .local v3, "safeIndex":I
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    aget v7, v4, v6

    .line 5961
    .local v7, "stream":I
    sget-object v8, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v8, v7

    if-ne v8, v2, :cond_4

    .line 5962
    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v8, v8, v7

    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateNoPermMinIndex(I)V

    .line 5960
    .end local v7    # "stream":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 5965
    :cond_5
    return-void
.end method

.method public isAudioServerRunning()Z
    .locals 1

    .line 10582
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 10583
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    .line 5009
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .line 4983
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOnForApp()Z

    move-result v0

    return v0
.end method

.method public isCallScreeningModeSupported()Z
    .locals 1

    .line 4698
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    return v0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .line 8938
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8939
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 8940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEUVersion()Z
    .locals 2

    .line 5293
    const-string/jumbo v0, "ro.build.eu"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5294
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .line 8855
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isInCommunication()Z
    .locals 6

    .line 5622
    const/4 v0, 0x0

    .line 5624
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 5625
    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 5627
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5628
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 5629
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5631
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 5632
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 5631
    :goto_1
    return v4
.end method

.method public isMasterMute()Z
    .locals 1

    .line 3678
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    .line 3805
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    return v0
.end method

.method isPlatformAutomotive()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPlatformTelevision()Z
    .locals 2

    .line 290
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .line 4931
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 5591
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 5471
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .line 3521
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 3522
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 3524
    :cond_0
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 3525
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3526
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .line 3878
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadSoundEffects()Z
    .locals 9

    .line 4778
    new-instance v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService$1;)V

    .line 4779
    .local v0, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4780
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->waitForLoaded(I)Z

    move-result v1

    return v1
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 9182
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9185
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9186
    return-void

    .line 9189
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 9190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume controller visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9191
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 8908
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8909
    return-void
.end method

.method public onAudioServerDied()V
    .locals 12

    .line 1225
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_10

    .line 1226
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1232
    :cond_0
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    .line 1240
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1242
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1244
    invoke-static {}, Landroid/media/AudioSystem;->isCallScreeningModeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    .line 1247
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onAudioServerDied()V

    .line 1250
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1251
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getModeOwnerUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1254
    invoke-static {v4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getModeOwnerUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1257
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1259
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1260
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1261
    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1262
    .local v0, "forSys":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1264
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    const-string/jumbo v4, "onAudioServerDied"

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1267
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1268
    .local v3, "numStreamTypes":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "streamType":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1269
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v1

    .line 1270
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    nop

    .line 1271
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    .line 1270
    invoke-static {v1, v5, v6}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1273
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1268
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1277
    .end local v1    # "streamType":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->restoreVolumeGroups()V

    .line 1280
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1283
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1289
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_4

    .line 1290
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1293
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1294
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_5

    .line 1295
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    move v1, v2

    .line 1296
    .local v1, "forDock":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v6, 0x3

    const-string/jumbo v7, "onAudioServerDied"

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1297
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1298
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1299
    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1300
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    invoke-static {v5}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    .line 1301
    nop

    .end local v1    # "forDock":I
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1302
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1303
    :try_start_3
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    invoke-static {v4}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 1304
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1305
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1306
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 1307
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1308
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1309
    :try_start_5
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_6

    .line 1310
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1312
    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1314
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1315
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    invoke-static {v1}, Landroid/media/AudioSystem;->setSupportedSystemUsages([I)I

    .line 1316
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1318
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 1319
    :try_start_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1320
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    move-result v7

    .line 1321
    .local v7, "status":I
    if-eqz v7, :cond_7

    .line 1323
    const-string v8, "AS.AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onAudioServerDied: error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-static {v7}, Landroid/media/AudioSystem;->audioSystemErrorToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " when connecting mixes for policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1323
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    goto :goto_4

    .line 1328
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setupDeviceAffinities()I

    move-result v8

    .line 1329
    .local v8, "deviceAffinitiesStatus":I
    if-eqz v8, :cond_8

    .line 1330
    const-string v9, "AS.AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onAudioServerDied: error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-static {v8}, Landroid/media/AudioSystem;->audioSystemErrorToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " when connecting device affinities for policy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1330
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 1337
    .end local v5    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .end local v7    # "status":I
    .end local v8    # "deviceAffinitiesStatus":I
    :cond_8
    :goto_4
    goto :goto_3

    .line 1338
    :cond_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1341
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v4

    .line 1342
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1343
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllAllowedCapturePolicies()Ljava/util/HashMap;

    move-result-object v1

    .line 1344
    .local v1, "allowedCapturePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1345
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 1346
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1347
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v2}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v9

    .line 1345
    invoke-static {v8, v9}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v8

    .line 1348
    .local v8, "result":I
    if-eqz v8, :cond_a

    .line 1349
    const-string v9, "AS.AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to restore capture policy, uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", capture policy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1349
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1356
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1355
    invoke-virtual {v9, v10, v6}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    .line 1358
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "result":I
    :cond_a
    goto :goto_5

    .line 1359
    .end local v1    # "allowedCapturePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_b
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1363
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1368
    new-array v1, v6, [I

    const/16 v4, 0xa4

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1369
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, -0x2

    const-string v5, "hearing_aid"

    invoke-static {v1, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v6, :cond_c

    move v1, v6

    goto :goto_6

    :cond_c
    move v1, v2

    .line 1371
    .local v1, "hacState":Z
    :goto_6
    if-eqz v1, :cond_d

    .line 1372
    const-string v4, "HACSetting=ON"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_7

    .line 1374
    :cond_d
    const-string v4, "HACSetting=OFF"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1382
    .end local v1    # "hacState":Z
    :cond_e
    :goto_7
    new-array v1, v6, [I

    const/16 v4, 0xb2

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1383
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    invoke-virtual {v1}, Lcom/android/server/audio/OpAudioMonitor;->onAudioServerDied()V

    .line 1388
    :cond_f
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1391
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 1392
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setMicMuteFromSwitchInput()V

    .line 1393
    return-void

    .line 1359
    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1

    .line 1338
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v2

    .line 1316
    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 1312
    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v2

    .line 1307
    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    .line 1304
    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    .line 1301
    :catchall_6
    move-exception v1

    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v1

    .line 1262
    .end local v0    # "forSys":I
    .end local v3    # "numStreamTypes":I
    :catchall_7
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    .line 1257
    :catchall_8
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v1

    .line 1227
    :cond_10
    :goto_8
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1230
    return-void
.end method

.method onIndicateSystemReady()V
    .locals 8

    .line 1212
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    return-void

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1222
    return-void
.end method

.method public onSystemReady()V
    .locals 10

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->scheduleLoadSoundEffects()V

    .line 1118
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->onSystemReady()V

    .line 1120
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1121
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1122
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1123
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1124
    if-eqz v3, :cond_0

    .line 1125
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    .line 1127
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiCecVolumeControlFeatureListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V

    .line 1130
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 1131
    if-eqz v3, :cond_1

    .line 1132
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1135
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1136
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 1137
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1140
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 1142
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1148
    const-string v1, "audio.safemedia.bypass"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1149
    move v9, v2

    goto :goto_1

    :cond_3
    const/16 v1, 0x7530

    move v9, v1

    .line 1142
    :goto_1
    const-string v8, "AS.AudioService"

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1151
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 1153
    new-instance v1, Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$RoleObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    .line 1154
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RoleObserver;->register()V

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1158
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    .line 1159
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setMicMuteFromSwitchInput()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->initMinStreamVolumeWithoutModifyAudioSettings()V

    .line 1165
    new-array v1, v0, [I

    const/16 v3, 0x8a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1166
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "per_speaker_music_volume"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 1167
    if-ne v1, v3, :cond_4

    .line 1168
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 1170
    :cond_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->initAlertSliderManager(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    .line 1171
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    .line 1174
    :cond_5
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 8886
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8887
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .line 4754
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 4755
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 4760
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4761
    return-void

    .line 4764
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 4769
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4771
    return-void

    .line 4765
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService effectType value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 10016
    if-eqz p2, :cond_0

    .line 10017
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V

    .line 10019
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 10020
    return-void
.end method

.method public playerEvent(II)V
    .locals 8
    .param p1, "piid"    # I
    .param p2, "event"    # I

    .line 10023
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 10027
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xb2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10028
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    .line 10029
    .local v1, "isMusicActive":Z
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 10030
    .local v0, "device":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMusicActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10032
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 10033
    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    const-string v4, "com.android.settings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 10037
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/OpAudioMonitor;->playerEvent(IIIILjava/lang/String;)V

    goto :goto_1

    .line 10034
    :cond_1
    :goto_0
    const-string/jumbo v2, "playerEvent app is systemui or settings, skip!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10035
    return-void

    .line 10042
    .end local v0    # "device":I
    .end local v1    # "isMusicActive":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z

    .line 10045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 10046
    return-void
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .locals 7
    .param p1, "newDevice"    # I

    .line 6275
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6277
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 7380
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7385
    return-void
.end method

.method postCallDeviceChange(I)V
    .locals 7
    .param p1, "forceUpdate"    # I

    .line 2948
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2949
    return-void
.end method

.method postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1504
    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .locals 7

    .line 6023
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6027
    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 7372
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7377
    return-void
.end method

.method postUpdateRingerModeServiceInt()V
    .locals 7

    .line 4197
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4198
    return-void
.end method

.method public recorderEvent(II)V
    .locals 1
    .param p1, "riid"    # I
    .param p2, "event"    # I

    .line 9959
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->recorderEvent(II)V

    .line 9960
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .locals 19
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z
    .param p4, "isFocusPolicy"    # Z
    .param p5, "isTestFocusPolicy"    # Z
    .param p6, "isVolumeController"    # Z
    .param p7, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 9482
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 9484
    const/4 v0, 0x0

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct {v10, v11, v1, v13, v14}, Lcom/android/server/audio/AudioService;->isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_2

    .line 9488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied to register audio policy for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9489
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need MODIFY_AUDIO_ROUTING or MediaProjection that can project audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9488
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9491
    return-object v15

    .line 9494
    :cond_2
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAudioPolicy for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9495
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioService"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 9494
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 9497
    const/16 v16, 0x0

    .line 9498
    .local v16, "regId":Ljava/lang/String;
    iget-object v9, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v9

    .line 9499
    :try_start_0
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9500
    const-string v0, "AS.AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9501
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v15

    .line 9504
    :cond_3
    :try_start_1
    new-instance v17, Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p7

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V

    move-object/from16 v1, v17

    .line 9506
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 9507
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 9508
    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9517
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    nop

    .line 9518
    :try_start_3
    monitor-exit v18

    .line 9519
    return-object v16

    .line 9514
    :catch_0
    move-exception v0

    goto :goto_2

    .line 9509
    :catch_1
    move-exception v0

    goto :goto_3

    .line 9514
    :catch_2
    move-exception v0

    move-object/from16 v18, v9

    .line 9515
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_2
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed for binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9516
    monitor-exit v18

    return-object v15

    .line 9509
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    move-object/from16 v18, v9

    .line 9511
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9513
    monitor-exit v18

    return-object v15

    .line 9518
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 4
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 10551
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 10552
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 10553
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10554
    const-string v1, "AS.AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10555
    monitor-exit v0

    return-void

    .line 10557
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10559
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_1
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10562
    goto :goto_0

    .line 10560
    :catch_0
    move-exception v2

    .line 10563
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10564
    nop

    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 10565
    return-void

    .line 10564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 2
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9991
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 9992
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9994
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 9995
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 2
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 9928
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 9929
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9931
    .local v0, "isPrivileged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 9932
    return-void
.end method

.method public registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 2089
    if-nez p1, :cond_0

    .line 2090
    return-void

    .line 2092
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2093
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 2094
    return-void
.end method

.method public releasePlayer(I)V
    .locals 7
    .param p1, "piid"    # I

    .line 10049
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 10053
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10054
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 10055
    .local v0, "device":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10056
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10057
    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10061
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    const/4 v3, 0x3

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    move v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/OpAudioMonitor;->playerEvent(IIIILjava/lang/String;)V

    goto :goto_1

    .line 10058
    :cond_1
    :goto_0
    const-string/jumbo v1, "releasePlayer app is systemui or settings, skip!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10059
    return-void

    .line 10066
    .end local v0    # "device":I
    :cond_2
    :goto_1
    return-void
.end method

.method public releaseRecorder(I)V
    .locals 1
    .param p1, "riid"    # I

    .line 9966
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    .line 9967
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    .line 4802
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 4803
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9747
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9748
    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 9749
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9750
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 9751
    monitor-exit v0

    return v2

    .line 9753
    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    .line 9754
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 9753
    return v2

    .line 9755
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePreferredDeviceForStrategy(I)I
    .locals 7
    .param p1, "strategy"    # I

    .line 2058
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2059
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2060
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "removePreferredDeviceForStrategy strat:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2061
    .local v1, "logString":Ljava/lang/String;
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioService"

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2063
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDeviceForStrategySync(I)I

    move-result v2

    .line 2064
    .local v2, "status":I
    if-eqz v2, :cond_0

    .line 2065
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v1, v4, v0

    const-string v0, "Error %d in %s)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_0
    return v2
.end method

.method public removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 3
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"    # I

    .line 9802
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9803
    :try_start_0
    const-string v1, "Cannot remove device affinity in audio policy"

    .line 9804
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9805
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_0

    .line 9806
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 9808
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 9809
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 3
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "userId"    # I

    .line 9818
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9819
    :try_start_0
    const-string v1, "Cannot remove device affinity in audio policy"

    .line 9820
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9821
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_0

    .line 9822
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 9824
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 9825
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 16
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p9, "sdk"    # I

    .line 8403
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 8404
    .local v15, "uid":I
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.service.focus"

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 8405
    invoke-virtual {v0, v15}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 8407
    invoke-virtual {v0, v2, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 8408
    invoke-virtual {v0, v2, v13}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 8409
    const-string/jumbo v3, "requestAudioFocus"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 8410
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    .line 8413
    .local v11, "mmi":Landroid/media/MediaMetrics$Item;
    const/4 v0, 0x0

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8414
    const-string v2, "Request using unsupported usage"

    .line 8415
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "AS.AudioService"

    const-string v4, "Request using unsupported usage"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8416
    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Request using unsupported usage"

    invoke-virtual {v11, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 8417
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8418
    return v0

    .line 8420
    .end local v2    # "reason":Ljava/lang/String;
    :cond_0
    and-int/lit8 v2, p7, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 8421
    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8422
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 8424
    const-string v2, "Invalid permission to (un)lock audio focus"

    .line 8425
    .restart local v2    # "reason":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "AS.AudioService"

    const-string v5, "Invalid permission to (un)lock audio focus"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8426
    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Invalid permission to (un)lock audio focus"

    invoke-virtual {v11, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 8427
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8428
    return v0

    .line 8432
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 8433
    :try_start_0
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8434
    const-string v3, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    .line 8436
    .local v3, "reason":Ljava/lang/String;
    const-string v4, "AS.AudioService"

    const-string v5, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8437
    sget-object v4, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v5, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-virtual {v11, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 8438
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8439
    monitor-exit v2

    return v0

    .line 8441
    .end local v3    # "reason":Ljava/lang/String;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8445
    :cond_3
    :goto_0
    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    if-nez v12, :cond_4

    move-object v1, v11

    goto :goto_1

    .line 8452
    :cond_4
    invoke-virtual {v11}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8453
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 8455
    move/from16 v10, p2

    invoke-direct {v1, v12, v10, v15}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v0

    .line 8453
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move-object v1, v11

    .end local v11    # "mmi":Landroid/media/MediaMetrics$Item;
    .local v1, "mmi":Landroid/media/MediaMetrics$Item;
    move v11, v0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    .line 8445
    .end local v1    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v11    # "mmi":Landroid/media/MediaMetrics$Item;
    :cond_5
    move-object v1, v11

    .line 8446
    .end local v11    # "mmi":Landroid/media/MediaMetrics$Item;
    .restart local v1    # "mmi":Landroid/media/MediaMetrics$Item;
    :goto_1
    const-string v2, "Invalid null parameter to request audio focus"

    .line 8447
    .restart local v2    # "reason":Ljava/lang/String;
    const-string v3, "AS.AudioService"

    const-string v4, "Invalid null parameter to request audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8448
    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Invalid null parameter to request audio focus"

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 8449
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8450
    return v0
.end method

.method protected scheduleLoadSoundEffects()V
    .locals 7

    .line 4788
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4789
    return-void
.end method

.method protected sendVolumeUpdate(IIIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I
    .param p5, "device"    # I

    .line 3434
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 3436
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3437
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p4

    .line 3438
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3439
    and-int/lit8 p4, p4, -0x2

    .line 3442
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 3443
    return-void
.end method

.method public setAllowedCapturePolicy(I)I
    .locals 7
    .param p1, "capturePolicy"    # I

    .line 10089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10090
    .local v0, "callingUid":I
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v1

    .line 10091
    .local v1, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 10092
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v4

    .line 10093
    :try_start_0
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v5

    .line 10094
    .local v5, "result":I
    if-nez v5, :cond_0

    .line 10095
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v6, v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    .line 10097
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10098
    monitor-exit v4

    return v5

    .line 10099
    .end local v5    # "result":I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setAutoPlayFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 2940
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mAutoPlayFlag:Z

    .line 2941
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 6212
    if-eqz p1, :cond_2

    .line 6215
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6220
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 6222
    return-void

    .line 6213
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 4990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4991
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4992
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBluetoothA2dpOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4993
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4994
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4996
    .local v2, "eventSource":Ljava/lang/String;
    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.setBluetoothA2dpOn"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 4998
    invoke-virtual {v3, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 4999
    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 5000
    if-eqz p1, :cond_0

    .line 5001
    const-string/jumbo v5, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "off"

    .line 5000
    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 5002
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5004
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOn_Async(ZLjava/lang/String;)V

    .line 5005
    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 6189
    if-eqz p1, :cond_3

    .line 6192
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6197
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 6198
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    goto :goto_1

    .line 6200
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 6202
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 6204
    return-void

    .line 6190
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .line 4936
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4937
    return-void

    .line 4940
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "AS.AudioService"

    if-lt v0, v1, :cond_1

    .line 4941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setBluetoothScoOn(), on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". The calling application Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4941
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOnByApp(Z)V

    .line 4945
    return-void

    .line 4949
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4950
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4951
    .local v1, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setBluetoothScoOn("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4952
    const-string v4, ") from u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4953
    .local v3, "eventSource":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.setBluetoothScoOn"

    invoke-direct {v2, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 4958
    invoke-virtual {v2, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 4959
    invoke-virtual {v2, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 4960
    if-eqz p1, :cond_2

    .line 4961
    const-string/jumbo v5, "on"

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "off"

    .line 4960
    :goto_0
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 4962
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 4964
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 4968
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x8d

    aput v5, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4969
    const/4 v2, 0x3

    .line 4970
    .local v2, "streamType":I
    const/16 v4, 0x20

    .line 4971
    .local v4, "device":I
    if-nez p1, :cond_3

    iget v5, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 4972
    const/4 v8, 0x3

    iget v9, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    const/4 v10, 0x0

    const/16 v11, 0x20

    const-string v12, "HeadsetProfile"

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    .line 4977
    .end local v2    # "streamType":I
    .end local v4    # "device":I
    :cond_3
    return-void
.end method

.method setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 12
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 7405
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 7407
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 7411
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xb2

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7412
    iget v2, p0, Lcom/android/server/audio/AudioService;->mNewIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v2, :cond_0

    .line 7413
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceVolume loadVolumeIndex newIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mNewIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7414
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    aget v3, v3, v5

    iget v5, p0, Lcom/android/server/audio/AudioService;->mNewIndex:I

    invoke-virtual {v2, v3, v5, p2}, Lcom/android/server/audio/OpAudioMonitor;->loadVolumeIndex(III)V

    .line 7421
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 7422
    .local v2, "numStreamTypes":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "streamType":I
    :goto_0
    if-ltz v3, :cond_3

    .line 7423
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    if-eq v3, v5, :cond_2

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v3

    .line 7424
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 7427
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 7428
    .local v5, "streamDevice":I
    if-eq p2, v5, :cond_1

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v6, :cond_1

    sget-object v6, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 7429
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7430
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v3

    invoke-virtual {v6, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 7432
    :cond_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v3

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 7422
    .end local v5    # "streamDevice":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 7435
    .end local v2    # "numStreamTypes":I
    .end local v3    # "streamType":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7437
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x1f4

    move v8, p2

    move-object v10, p1

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7449
    new-array v0, v1, [I

    const/16 v1, 0x8d

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7450
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 7451
    .local v0, "devices":I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-ne p2, v2, :cond_4

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    .line 7455
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    .line 7456
    .local v1, "otherDevice":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceVolume() pesist ring volume for other device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7457
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, v1

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7468
    .end local v0    # "devices":I
    .end local v1    # "otherDevice":I
    :cond_4
    return-void

    .line 7435
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 6041
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 6043
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6044
    invoke-static {p2}, Landroid/media/AudioManager;->enforceValidVolumeBehavior(I)V

    .line 6045
    if-nez p3, :cond_0

    .line 6046
    const-string p3, ""

    .line 6049
    :cond_0
    nop

    .line 6050
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 6049
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 6051
    .local v0, "audioSystemDeviceOut":I
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V

    .line 6053
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->persistDeviceVolumeBehavior(II)V

    .line 6054
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 7
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9831
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9832
    :try_start_0
    const-string v1, "Cannot change audio policy focus properties"

    .line 9833
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9834
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 9835
    monitor-exit v0

    return v2

    .line 9837
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9838
    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9839
    monitor-exit v0

    return v2

    .line 9841
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 9843
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9844
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_2

    .line 9845
    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9846
    monitor-exit v0

    return v2

    .line 9848
    .end local v5    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_2
    goto :goto_0

    .line 9850
    :cond_3
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 9851
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 9853
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 9854
    return v4

    .line 9853
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 10500
    if-eqz p1, :cond_2

    .line 10503
    if-eqz p3, :cond_1

    .line 10506
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 10507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10510
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 10511
    monitor-exit v0

    .line 10512
    return-void

    .line 10508
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "afi":Landroid/media/AudioFocusInfo;
    .end local p2    # "requestResult":I
    .end local p3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    throw v1

    .line 10511
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "afi":Landroid/media/AudioFocusInfo;
    .restart local p2    # "requestResult":I
    .restart local p3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10504
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10501
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .line 8832
    const/4 v0, 0x0

    .line 8833
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8834
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    .line 8835
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-nez v2, :cond_0

    .line 8836
    const-string v2, "AS.AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8838
    monitor-exit v1

    return v0

    .line 8840
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_2

    .line 8841
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8842
    if-eqz p1, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    .line 8843
    :cond_1
    const/4 v2, 0x0

    :goto_0
    nop

    .line 8844
    .local v2, "config":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x5

    const-string/jumbo v5, "setHdmiSystemAudioSupported"

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 8847
    .end local v2    # "config":I
    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v2

    move v0, v2

    .line 8849
    :cond_3
    monitor-exit v1

    .line 8850
    return v0

    .line 8849
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 3682
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 3683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 3685
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3743
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3744
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3746
    :cond_0
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.mic"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v1, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 3748
    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 3749
    const-string/jumbo v3, "setMicrophoneMute"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    .line 3750
    if-eqz p1, :cond_1

    .line 3751
    const-string/jumbo v3, "mute"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unmute"

    .line 3750
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 3754
    .local v1, "mmi":Landroid/media/MediaMetrics$Item;
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 3756
    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "disallow unmuting"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3757
    return-void

    .line 3759
    :cond_2
    const-string/jumbo v2, "setMicrophoneMute()"

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3760
    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "!checkAudioSettingsPermission"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3761
    return-void

    .line 3763
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p3, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3764
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 3767
    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "permission"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3768
    return-void

    .line 3770
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    .line 3771
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3772
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 3773
    return-void
.end method

.method public setMicrophoneMuteFromSwitch(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 3777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3778
    .local v0, "userId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3779
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setMicrophoneMuteFromSwitch() called from non system user!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    return-void

    .line 3782
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    .line 3783
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.mic"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 3784
    invoke-virtual {v1, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 3785
    const-string/jumbo v3, "setMicrophoneMuteFromSwitch"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    .line 3786
    if-eqz p1, :cond_1

    .line 3787
    const-string/jumbo v3, "mute"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unmute"

    .line 3786
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 3788
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 3789
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 3790
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 23
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4348
    move-object/from16 v7, p0

    move/from16 v1, p1

    move-object/from16 v8, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Process ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4348
    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    const-string/jumbo v0, "setMode()"

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4354
    return-void

    .line 4356
    :cond_0
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    move v11, v0

    .line 4359
    .local v11, "hasModifyPhoneStatePermission":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 4360
    .local v12, "callingPid":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    if-nez v11, :cond_2

    .line 4361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4361
    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    return-void

    .line 4366
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-boolean v2, v7, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    if-nez v2, :cond_3

    .line 4367
    const-string v0, "AS.AudioService"

    const-string/jumbo v2, "setMode(MODE_CALL_SCREENING) not permitted when call screening is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    return-void

    .line 4372
    :cond_3
    const/4 v2, -0x1

    if-lt v1, v2, :cond_b

    const/4 v3, 0x5

    if-lt v1, v3, :cond_4

    goto/16 :goto_3

    .line 4377
    :cond_4
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v13, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4378
    if-ne v1, v2, :cond_5

    .line 4379
    :try_start_0
    iget v2, v7, Lcom/android/server/audio/AudioService;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    move v14, v1

    .end local p1    # "mode":I
    .local v1, "mode":I
    goto :goto_1

    .line 4417
    .end local v1    # "mode":I
    .restart local p1    # "mode":I
    :catchall_0
    move-exception v0

    move v14, v1

    goto/16 :goto_2

    .line 4378
    :cond_5
    move v14, v1

    .line 4381
    .end local p1    # "mode":I
    .local v14, "mode":I
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v1

    move v15, v1

    .line 4387
    .local v15, "oldModeOwnerPid":I
    iget v1, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v6, 0x3

    if-eq v14, v1, :cond_7

    if-eqz v14, :cond_7

    iget v1, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v1, v0, :cond_6

    iget v0, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-ne v0, v6, :cond_7

    :cond_6
    if-nez v11, :cond_7

    if-eq v15, v12, :cond_7

    .line 4391
    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cannot change mode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without permission or being mode owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4391
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    monitor-exit v13

    return-void

    .line 4401
    :cond_7
    if-ne v14, v10, :cond_8

    iget v0, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v14, v0, :cond_8

    .line 4402
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "set WhitelistGameDolbyConfig 1 when into ring mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    new-array v0, v10, [I

    const/16 v1, 0x112

    aput v1, v0, v9

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4404
    const-string v0, "WhitelistGameDolbyConfig=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4407
    :cond_8
    iget v0, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-ne v0, v10, :cond_9

    iget v0, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v14, v0, :cond_9

    .line 4408
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "set WhitelistGameDolbyConfig 0 when leave ring mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x27

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xc8

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4415
    :cond_9
    nop

    .line 4416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4415
    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v3, p2

    move v4, v12

    move v0, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    .line 4417
    .end local v15    # "oldModeOwnerPid":I
    .local v1, "newModeOwnerPid":I
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4423
    new-array v2, v10, [I

    const/16 v3, 0x8c

    aput v3, v2, v9

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4424
    if-ne v14, v0, :cond_a

    if-eqz v1, :cond_a

    .line 4425
    iput v9, v7, Lcom/android/server/audio/AudioService;->mabPhonestateComActiveMs:I

    .line 4426
    invoke-direct {v7, v8}, Lcom/android/server/audio/AudioService;->onCheckPhoneMode(Ljava/lang/String;)V

    .line 4430
    :cond_a
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetModeOwnerPid(I)V

    .line 4431
    return-void

    .line 4417
    .end local v1    # "newModeOwnerPid":I
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 4373
    .end local v14    # "mode":I
    .restart local p1    # "mode":I
    :cond_b
    :goto_3
    return-void
.end method

.method public setMultiAudioFocusEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 10625
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 10626
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-eqz v0, :cond_0

    .line 10627
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getMultiAudioFocusEnabled()Z

    move-result v0

    .line 10628
    .local v0, "mafEnabled":Z
    if-eq v0, p1, :cond_0

    .line 10629
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/MediaFocusControl;->updateMultiAudioFocus(Z)V

    .line 10630
    if-nez p1, :cond_0

    .line 10631
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 10635
    .end local v0    # "mafEnabled":Z
    :cond_0
    return-void
.end method

.method setMusicMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .line 6225
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->muteInternally(Z)Z

    .line 6226
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10072
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    .line 10073
    return-void
.end method

.method public setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I
    .locals 8
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 2035
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 2036
    return v0

    .line 2038
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2039
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 2039
    const-string/jumbo v2, "setPreferredDeviceForStrategy u/pid:%d/%d strat:%d dev:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, "logString":Ljava/lang/String;
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v6, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v7, "AS.AudioService"

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2043
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported input routing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return v0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 2049
    .local v0, "status":I
    if-eqz v0, :cond_2

    .line 2050
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v1, v2, v4

    const-string v3, "Error %d in %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_2
    return v0
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 3882
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3883
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3884
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3888
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 3891
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 3892
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3893
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .line 8567
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8568
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 8569
    return-void
.end method

.method public setRttEnabled(Z)V
    .locals 4
    .param p1, "rttEnabled"    # Z

    .line 4704
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODIFY_PHONE_STATE Permission Denial: setRttEnabled from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4707
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    return-void

    .line 4711
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4712
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    .line 4713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4715
    .local v1, "identity":J
    :try_start_1
    invoke-static {p1}, Landroid/media/AudioSystem;->setRttEnabled(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4717
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4718
    nop

    .line 4719
    .end local v1    # "identity":J
    monitor-exit v0

    .line 4720
    return-void

    .line 4717
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4718
    nop

    .end local p0    # "this":Lcom/android/server/audio/AudioService;
    .end local p1    # "rttEnabled":Z
    throw v3

    .line 4719
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/audio/AudioService;
    .restart local p1    # "rttEnabled":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setSpeakerphoneOn(Landroid/os/IBinder;Z)V
    .locals 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 4856
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4857
    return-void

    .line 4860
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 4863
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4867
    const/4 v1, 0x0

    .line 4868
    .local v1, "topModeOwnerPid":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4869
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v2

    move v1, v2

    .line 4873
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4874
    .local v4, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 4875
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMode is call, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4876
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4875
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    monitor-exit v0

    return-void

    .line 4882
    :cond_2
    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    if-eq v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 4883
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 4885
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4886
    const-string v5, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip permission denial when pubg app in communication mode:setSpeakerphoneOn from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4887
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", topModeOwnerPid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4886
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4889
    :cond_3
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMode is MODE_IN_COMMUNICATION, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", topModeOwnerPid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4889
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    monitor-exit v0

    return-void

    .line 4896
    .end local v4    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 4897
    .end local v1    # "topModeOwnerPid":I
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4901
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4902
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4903
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSpeakerphoneOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4904
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4905
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4906
    .local v2, "eventSource":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", eventSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(Landroid/os/IBinder;IZLjava/lang/String;)Z

    move-result v3

    .line 4909
    .local v3, "stateChanged":Z
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.setSpeakerphoneOn"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 4911
    invoke-virtual {v4, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 4912
    invoke-virtual {v4, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 4913
    if-eqz p2, :cond_7

    .line 4914
    const-string/jumbo v6, "on"

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "off"

    .line 4913
    :goto_3
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 4915
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 4917
    if-eqz v3, :cond_8

    .line 4918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4920
    .local v4, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x40000000    # 2.0f

    .line 4922
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 4920
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4924
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4925
    goto :goto_4

    .line 4924
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4925
    throw v6

    .line 4927
    .end local v4    # "ident":J
    :cond_8
    :goto_4
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 2837
    const-string v0, "AS.AudioService"

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    return-void

    .line 2842
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2843
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    return-void

    .line 2850
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2851
    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_ASSISTANT without MODIFY_AUDIO_ROUTING  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return-void

    .line 2858
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2859
    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2861
    .local v8, "hasModifyAudioSettings":Z
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x2

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2863
    nop

    .line 2864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2863
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 2865
    return-void
.end method

.method public setStreamVolumeForDevice(IIIILjava/lang/String;)V
    .locals 15
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .line 2874
    move-object v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x1

    new-array v0, v12, [I

    const/4 v1, 0x0

    const/16 v2, 0x8a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v13, 0x3

    const-string v14, "AS.AudioService"

    if-eqz v0, :cond_3

    if-ne v8, v13, :cond_3

    const/4 v0, 0x2

    if-ne v11, v0, :cond_3

    .line 2876
    const/16 v0, -0x64

    const/4 v1, -0x1

    if-ne v10, v0, :cond_1

    .line 2877
    iget v0, v7, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v0, v1, :cond_0

    .line 2878
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 2879
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2881
    const-string/jumbo v0, "set speaker music mute"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2882
    :cond_1
    const/16 v0, 0x64

    if-ne v10, v0, :cond_3

    .line 2883
    iget v2, v7, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v2, v1, :cond_2

    .line 2884
    return-void

    .line 2886
    :cond_2
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restore speaker music "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_3
    :goto_0
    if-ne v8, v13, :cond_7

    const/16 v0, 0x20

    if-ne v11, v0, :cond_7

    .line 2893
    if-ne v10, v12, :cond_5

    const/16 v0, 0x1e

    if-ne v9, v0, :cond_5

    .line 2894
    iget v0, v7, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_4

    .line 2895
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 2897
    :cond_4
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set sco music volume to max, mPerScoMediaVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2899
    :cond_5
    if-nez v10, :cond_7

    iget v2, v7, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-ne v9, v2, :cond_7

    .line 2900
    if-gez v2, :cond_6

    .line 2901
    return-void

    .line 2903
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restore soc  music volume to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_7
    :goto_1
    return-void
.end method

.method public setSupportedSystemUsages([I)V
    .locals 2
    .param p1, "systemUsages"    # [I

    .line 1431
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->verifySystemUsages([I)V

    .line 1434
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1435
    :try_start_0
    invoke-static {p1}, Landroid/media/AudioSystem;->setSupportedSystemUsages([I)I

    .line 1436
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    .line 1437
    monitor-exit v0

    .line 1438
    return-void

    .line 1437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"    # I
    .param p3, "deviceTypes"    # [I
    .param p4, "deviceAddresses"    # [Ljava/lang/String;

    .line 9764
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9765
    :try_start_0
    const-string v1, "Cannot change device affinity in audio policy"

    .line 9766
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9767
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 9768
    monitor-exit v0

    return v2

    .line 9770
    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9771
    monitor-exit v0

    return v2

    .line 9773
    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 9774
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "userId"    # I
    .param p3, "deviceTypes"    # [I
    .param p4, "deviceAddresses"    # [Ljava/lang/String;

    .line 9784
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9785
    :try_start_0
    const-string v1, "Cannot change device affinity in audio policy"

    .line 9786
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 9787
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 9788
    monitor-exit v0

    return v2

    .line 9790
    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9791
    monitor-exit v0

    return v2

    .line 9793
    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 9794
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 4234
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    .line 4236
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 4240
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 4242
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 9151
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9154
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9155
    return-void

    .line 9159
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 9160
    if-eqz p1, :cond_1

    .line 9163
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9174
    goto :goto_0

    .line 9172
    :catch_0
    move-exception v0

    .line 9176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 9177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume controller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9178
    return-void
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    .locals 21
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 2768
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2769
    const-string v0, "attr must not be null"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2770
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v9

    .line 2771
    .local v9, "volumeGroup":I
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const-string v10, "AS.AudioService"

    if-gez v0, :cond_0

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": no volume group found for attributes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    return-void

    .line 2775
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 2777
    .local v11, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v2, 0x8

    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, v12

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(ILandroid/media/AudioAttributes;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2780
    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v1, v2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(II)V

    .line 2783
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getLegacyStreamTypes()[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 2785
    .local v6, "groupedStream":I
    move-object/from16 v7, p0

    :try_start_0
    invoke-direct {v7, v6}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    nop

    .line 2791
    nop

    .line 2792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    const/16 v20, 0x1

    .line 2791
    move-object/from16 v13, p0

    move v14, v6

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v20}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 2786
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 2787
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "volume group "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has internal streams ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "), do not change associated stream volume"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    nop

    .line 2783
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "groupedStream":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2794
    :cond_1
    move-object/from16 v7, p0

    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 9195
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 9196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9197
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 9198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume policy changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9200
    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 6154
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 6155
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6159
    :cond_1
    :goto_0
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.service.setWiredDeviceConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 6160
    invoke-virtual {v1, v2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 6161
    invoke-virtual {v1, v2, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 6162
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 6163
    invoke-virtual {v1, v2, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 6165
    if-ne p2, v0, :cond_2

    const-string v0, "connected"

    goto :goto_1

    :cond_2
    const-string v0, "disconnected"

    .line 6164
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 6166
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 6167
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6168
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4
    .param p1, "vibrateType"    # I

    .line 4206
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 4221
    return v1

    .line 4214
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 4211
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 3896
    const/4 v0, 0x0

    .line 3897
    .local v0, "effect":Landroid/os/VibrationEffect;
    const/4 v1, 0x0

    .line 3898
    .local v1, "ringerMode":I
    const/4 v2, 0x0

    .line 3900
    .local v2, "toastText":I
    const/4 v3, 0x0

    .line 3901
    .local v3, "silenceRingerSetting":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3902
    const v5, 0x1110107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3903
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, -0x2

    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 3908
    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    goto :goto_0

    .line 3910
    :cond_1
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3911
    const/4 v1, 0x0

    .line 3912
    const v2, 0x104081a

    .line 3913
    goto :goto_0

    .line 3915
    :cond_2
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3916
    const/4 v1, 0x1

    .line 3917
    const v2, 0x104081b

    .line 3920
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z

    .line 3921
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 3922
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3923
    return-void
.end method

.method public startAutoPlayback(I)V
    .locals 7
    .param p1, "delay"    # I

    .line 2927
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2928
    return-void
.end method

.method public startAutoPlaybackForBT()V
    .locals 2

    .line 2923
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "startAutoPlaybackForBT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->startAutoPlayback(I)V

    .line 2925
    return-void
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .line 5014
    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 5016
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 5020
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5021
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5023
    .local v2, "pid":I
    const/16 v3, 0x12

    if-ge p2, v3, :cond_1

    .line 5024
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 5025
    .local v3, "scoAudioMode":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startBluetoothSco()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5026
    const-string v5, ") from u/pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5027
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5029
    .local v4, "eventSource":Ljava/lang/String;
    new-instance v5, Landroid/media/MediaMetrics$Item;

    const-string v6, "audio.bluetooth"

    invoke-direct {v5, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {v5, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    .line 5031
    invoke-virtual {v5, v2}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 5032
    const-string/jumbo v7, "startBluetoothSco"

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    .line 5034
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 5033
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    .line 5035
    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5036
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 5038
    return-void

    .line 5017
    .end local v0    # "uid":I
    .end local v2    # "pid":I
    .end local v3    # "scoAudioMode":I
    .end local v4    # "eventSource":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v2, "startBluetoothSco(), BT is not turned ON or adapter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 5060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.bluetooth"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 5062
    const-string/jumbo v2, "startBluetoothScoInt"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    .line 5064
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 5063
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 5066
    .local v0, "mmi":Landroid/media/MediaMetrics$Item;
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 5071
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5072
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 5073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5074
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5075
    return-void

    .line 5073
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5068
    :cond_1
    :goto_0
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "permission or systemReady"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5069
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 5042
    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5044
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5045
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startBluetoothScoVirtualCall()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5046
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5047
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5049
    .local v2, "eventSource":Ljava/lang/String;
    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.bluetooth"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 5050
    invoke-virtual {v3, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 5051
    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 5052
    const-string/jumbo v5, "startBluetoothScoVirtualCall"

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    .line 5054
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v6

    .line 5053
    invoke-virtual {v3, v4, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 5055
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5056
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 5057
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 1
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 8578
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    return-object v0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 5079
    const-string v0, "AS.AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 5081
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 5085
    :cond_0
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 5089
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5090
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5091
    .local v2, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stopBluetoothSco()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5092
    const-string v4, ") from u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5093
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5094
    .local v3, "eventSource":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5095
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5096
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5097
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.bluetooth"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {v4, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 5099
    invoke-virtual {v4, v2}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 5100
    const-string/jumbo v6, "stopBluetoothSco"

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    const/4 v6, -0x1

    .line 5102
    invoke-static {v6}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v6

    .line 5101
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 5103
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 5104
    return-void

    .line 5096
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 5087
    .end local v1    # "uid":I
    .end local v2    # "pid":I
    .end local v3    # "eventSource":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 5082
    :cond_3
    :goto_1
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "stopBluetoothSco(), BT is not turned ON or adapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    return-void
.end method

.method public systemReady()V
    .locals 7

    .line 1078
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1083
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/OpAudioMonitor;->systemReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :cond_0
    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v0

    .line 1089
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "mAudioMonitor.systemReady ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 1
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 10009
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    .line 10010
    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V

    .line 10012
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "recorder"    # Landroid/os/IBinder;

    .line 9952
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->trackRecorder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .line 4797
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4798
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 8476
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 8477
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 8478
    const-string/jumbo v2, "unregisterAudioFocusClient"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 8479
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8480
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 8481
    return-void
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9678
    if-nez p1, :cond_0

    .line 9679
    return-void

    .line 9681
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 9682
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9670
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 9671
    return-void
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 10568
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 10569
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 10570
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 10571
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    if-nez v1, :cond_0

    .line 10572
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10572
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10574
    monitor-exit v0

    return-void

    .line 10576
    :cond_0
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 10578
    nop

    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 10579
    return-void

    .line 10578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 1
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9998
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 9999
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 9935
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 9936
    return-void
.end method

.method public unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 2099
    if-nez p1, :cond_0

    .line 2100
    return-void

    .line 2102
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2103
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 2104
    return-void
.end method

.method updateAbsVolumeMultiModeDevices(II)V
    .locals 7
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    .line 3034
    if-ne p1, p2, :cond_0

    .line 3035
    return-void

    .line 3037
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 3049
    return-void

    .line 3041
    :cond_1
    nop

    .line 3052
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    .line 3054
    .local v0, "streamType":I
    nop

    .line 3055
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 3054
    invoke-static {v1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(I)Ljava/util/Set;

    move-result-object v1

    .line 3056
    .local v1, "deviceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->intersectionAudioDeviceTypes(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 3058
    .local v2, "absVolumeMultiModeCaseDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3059
    return-void

    .line 3063
    :cond_2
    const/high16 v3, 0x8000000

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3065
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v3

    .line 3066
    .local v3, "index":I
    sget-object v4, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v6, 0x7

    invoke-direct {v5, v6, p2, v0, v3}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3068
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v5, v3, 0xa

    invoke-virtual {v4, v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 3070
    .end local v3    # "index":I
    :cond_3
    return-void
.end method
