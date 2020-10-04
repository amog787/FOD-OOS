.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$RoleObserver;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final APPLOCKER_SEPARATOR:Ljava/lang/String; = "|"

.field private static final APP_LOCKER_SWITCH_OFF:I = 0x0

.field private static final APP_LOCKER_SWITCH_ON:I = 0x1

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final COLUMN_SMART_DRIVE_SWITCH:Ljava/lang/String; = "smart_drive_switch"

.field private static final COLUMN_TURN_ON_FROM:Ljava/lang/String; = "turn_on_from"

.field static final DBG:Z

.field static final DBG_ONEPLUS:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0x64L

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field private static final KEEP_ALIVE_APP_WHITELIST:[Ljava/lang/String;

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG:Ljava/lang/String; = "allow-secure-notifications-on-lockscreen"

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE:Ljava/lang/String; = "value"

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x19

.field static final MESSAGE_DURATION_REACHED:I = 0x2

.field static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field static final MESSAGE_ON_PACKAGE_CHANGED:I = 0x8

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field static final MESSAGE_STOP_VIBRATE:I = 0x65

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field private static final NAVIGAION_NOTIFACTION_IDS:[Ljava/lang/Integer;

.field public static final NAVIGAION_NOTIFICATION_CAR:I = 0x5f48171

.field public static final NAVIGAION_NOTIFICATION_CLOSE:I = 0x5f48170

.field public static final NAVIGAION_NOTIFICATION_COMMON:I = 0x2710

.field public static final NAVIGAION_NOTIFICATION_CYCLING:I = 0x5f48173

.field public static final NAVIGAION_NOTIFICATION_OTHRE:I = 0x5f48175

.field public static final NAVIGAION_NOTIFICATION_TRANSIT:I = 0x5f48174

.field public static final NAVIGAION_NOTIFICATION_WALK:I = 0x5f48172

.field static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field private static final OP_ACTION_DRIVING_MODE:Ljava/lang/String; = "heytap.intent.action.DRIVING_MODE_NAV"

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field private static final SMART_DRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.speechassist"

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field private static final SWITCH_OFF:I = 0x0

.field private static final SWITCH_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TURN_ON_FROM_MAP:I = 0x4

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static final WHITELIST_TOKEN:Landroid/os/IBinder;

.field private static mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/IActivityManager;

.field private mAppLockerSwitch:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field private mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAutoGroupAtCount:I

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisableNotificationEffects:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mDrivingModeOn:Z

.field private mESportModeOn:Z

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field mHasLight:Z

.field protected mInCall:Z

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsAutomotive:Z

.field private mIsDefaultVibration:Z

.field private mIsSoundPlayDelayed:Z

.field private mIsTelevision:Z

.field private mKeepAliveAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAliveByNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOverRateLogTime:J

.field mLightEnabled:Z

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLock:Ljava/lang/Object;

.field private mLockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenAllowSecureNotifications:Z

.field private mMaxPackageEnqueueRate:F

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavigationNotificationIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNotificationEffectsEnabledForAutomotive:Z

.field mNotificationHeadsetMode:I

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mNotificationLightController:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLock:Ljava/lang/Object;

.field mNotificationPulseEnabled:Z

.field private final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOpNotificationInjector:Lcom/android/server/notification/OpNotificationInjector;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field mScreenOn:Z

.field final mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedByDriveMode:Z

.field mSystemReady:Z

.field private mTempAudioAttributes:Landroid/media/AudioAttributes;

.field private mTempLooping:Z

.field private mTempUserHandle:Landroid/os/UserHandle;

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUgm:Landroid/app/IUriGrantsManager;

.field private mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mUm:Landroid/os/UserManager;

.field private mUnlockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibScenesId:I

.field private mVibrateNotificationKey:Ljava/lang/String;

.field private mVibrateSoundUri:Landroid/net/Uri;

.field private mVibrateWhenMute:I

.field mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 341
    const/4 v0, 0x3

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 342
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    .line 343
    nop

    .line 344
    const/4 v1, 0x1

    const-string v2, "debug.child_notifs"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 346
    const/4 v2, 0x0

    const-string v3, "debug.notification.interruptiveness"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 375
    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 385
    const-string/jumbo v4, "key_contextual_actions"

    const-string/jumbo v5, "key_text_replies"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 389
    const-string v4, "android.app.role.DIALER"

    const-string v5, "android.app.role.EMERGENCY"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    .line 417
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".TIMEOUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 524
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    sput v4, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 525
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    sput v4, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 526
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    .line 570
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Integer;

    .line 571
    const v5, 0x5f48170

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 572
    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 573
    const v1, 0x5f48171

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 574
    const v1, 0x5f48172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 575
    const v0, 0x5f48173

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    .line 576
    const v0, 0x5f48174

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v4, v1

    .line 577
    const v0, 0x5f48175

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v4, v1

    sput-object v4, Lcom/android/server/notification/NotificationManagerService;->NAVIGAION_NOTIFACTION_IDS:[Ljava/lang/Integer;

    .line 590
    const-string v0, "com.autonavi.minimap"

    const-string v1, "com.baidu.BaiduMap"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->KEEP_ALIVE_APP_WHITELIST:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 440
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 442
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 459
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 463
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 466
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 467
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 478
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 481
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 484
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 488
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 490
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 491
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 517
    new-instance v3, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 522
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 529
    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 544
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    .line 553
    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    .line 588
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLock:Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->KEEP_ALIVE_APP_WHITELIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveAppWhiteList:Ljava/util/List;

    .line 595
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->NAVIGAION_NOTIFACTION_IDS:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNavigationNotificationIDList:Ljava/util/List;

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveByNotificationMap:Ljava/util/Map;

    .line 605
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    .line 614
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    .line 616
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsDefaultVibration:Z

    .line 618
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTempLooping:Z

    .line 619
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mTempAudioAttributes:Landroid/media/AudioAttributes;

    .line 620
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z

    .line 912
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1297
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1309
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1329
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1352
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1506
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2664
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 5255
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 1786
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    sput-object v0, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    .line 1787
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # [I

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->stopVibrate()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "x8"    # Z
    .param p9, "x9"    # I
    .param p10, "x10"    # Z
    .param p11, "x11"    # I
    .param p12, "x12"    # Ljava/lang/String;
    .param p13, "x13"    # Z

    .line 339
    invoke-direct/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$10802(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 339
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$10900(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 339
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 339
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 339
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 339
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    return-void
.end method

.method static synthetic access$2400()Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;
    .locals 1

    .line 339
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/notification/NotificationManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # F

    .line 339
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 339
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 339
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDrivingModeOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/OpNotificationInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mOpNotificationInjector:Lcom/android/server/notification/OpNotificationInjector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannelGroup;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannel;
    .param p4, "x4"    # Z

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Landroid/service/notification/Adjustment;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/notification/NotificationManagerService;)Lcom/oneplus/notification/OpNotificationLightControllerInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveAppWhiteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveByNotificationMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSuppressedByDriveMode:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSuppressedByDriveMode:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setKeepAliveAppIfNeed(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 339
    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;

    .line 339
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleDelayPlaySound()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Binder;

    .line 339
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 339
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "overrideGroupKey"    # Ljava/lang/String;

    .line 4848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4849
    .local v0, "signals":Landroid/os/Bundle;
    const-string/jumbo v1, "key_group_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4850
    new-instance v7, Landroid/service/notification/Adjustment;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4851
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    const-string v5, ""

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 4852
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4853
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .line 2501
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2506
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2507
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 2487
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 2488
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2491
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 2492
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2495
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 2496
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2498
    :cond_2
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 4802
    if-nez p1, :cond_0

    .line 4803
    return-void

    .line 4805
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4806
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    .line 4807
    .local v0, "adjustments":Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4809
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4810
    .local v3, "potentialKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4811
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4813
    .end local v3    # "potentialKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 4814
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4815
    .local v3, "removeKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4816
    .end local v3    # "removeKey":Ljava/lang/String;
    goto :goto_1

    .line 4817
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4819
    .end local v0    # "adjustments":Landroid/os/Bundle;
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7202
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 7203
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7204
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 7205
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 7204
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_0

    .line 7207
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 7209
    :goto_0
    return-void
.end method

.method private calculateHints()I
    .locals 5

    .line 2510
    const/4 v0, 0x0

    .line 2511
    .local v0, "hints":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2512
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2513
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2515
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2516
    or-int/2addr v0, v2

    .line 2511
    .end local v2    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2520
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private calculateSuppressedEffects()J
    .locals 5

    .line 2524
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2525
    .local v0, "hints":I
    const-wide/16 v1, 0x0

    .line 2527
    .local v1, "suppressedEffects":J
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 2528
    const-wide/16 v3, 0x3

    or-long/2addr v1, v3

    .line 2531
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 2532
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 2535
    :cond_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 2536
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 2539
    :cond_2
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 8266
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 8270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8269
    :cond_0
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 8268
    :cond_1
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 8267
    :cond_2
    const-string v0, "CALL_STATE_IDLE"

    return-object v0
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .locals 16
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"    # Z
    .param p6, "channelId"    # Ljava/lang/String;
    .param p7, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"    # Z
    .param p9, "userId"    # I
    .param p10, "sendDelete"    # Z
    .param p11, "reason"    # I
    .param p12, "listenerName"    # Ljava/lang/String;
    .param p13, "wasPosted"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 7742
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p9

    const/4 v0, 0x0

    .line 7743
    .local v0, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    move-object v13, v0

    move v12, v1

    .end local v0    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v12, "i":I
    .local v13, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_0
    if-ltz v12, :cond_9

    .line 7744
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 7747
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    const/16 v0, 0x14

    move/from16 v15, p11

    if-ne v15, v0, :cond_1

    .line 7748
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 7749
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_1

    .line 7750
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "appPackage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7751
    .local v1, "appPackage":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7752
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 7753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REASON_ONEPLUS_FORCESTOP pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 7752
    :cond_0
    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 7760
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "appPackage":Ljava/lang/String;
    :cond_1
    if-eqz p8, :cond_2

    .line 7761
    invoke-direct {v7, v14, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7762
    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 7764
    :cond_2
    invoke-direct {v7, v14, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7765
    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 7768
    :cond_3
    if-eqz p5, :cond_4

    if-nez v9, :cond_4

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 7769
    move-object/from16 v5, p7

    goto :goto_1

    .line 7771
    :cond_4
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7772
    goto :goto_1

    .line 7774
    :cond_5
    if-eqz v9, :cond_6

    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7775
    goto :goto_1

    .line 7777
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 7778
    goto :goto_1

    .line 7780
    :cond_7
    if-nez v13, :cond_8

    .line 7781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 7783
    :cond_8
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7784
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7785
    invoke-virtual {v14, v6}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 7786
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7787
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 7743
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v15, p11

    .line 7789
    .end local v12    # "i":I
    if-eqz v13, :cond_b

    .line 7790
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 7791
    .local v12, "M":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_a

    .line 7792
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p12

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7791
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 7795
    .end local v14    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 7797
    .end local v12    # "M":I
    :cond_b
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .locals 19
    .param p2, "parentNotification"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "listenerName"    # Ljava/lang/String;
    .param p6, "sendDelete"    # Z
    .param p7, "wasPosted"    # Z
    .param p8, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            ")V"
        }
    .end annotation

    .line 7912
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7913
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 7914
    .local v14, "userId":I
    const/16 v15, 0xc

    .line 7915
    .local v15, "reason":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v13, v4

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_5

    .line 7916
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 7917
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v11, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7918
    .local v11, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_4

    .line 7919
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7920
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    .line 7921
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v4, p0

    move v1, v13

    goto/16 :goto_2

    .line 7922
    :cond_1
    :goto_1
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 7923
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    .line 7922
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move v9, v14

    move-object/from16 v18, v11

    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .local v18, "childSbn":Landroid/service/notification/StatusBarNotification;
    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v16, "childR":Lcom/android/server/notification/NotificationRecord;
    move/from16 v12, v17

    move v1, v13

    .end local v13    # "i":I
    .local v1, "i":I
    move-object/from16 v13, p5

    invoke-static/range {v4 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 7924
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7925
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7926
    const/16 v8, 0xc

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    goto :goto_2

    .line 7920
    .end local v1    # "i":I
    .end local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13    # "i":I
    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13    # "i":I
    .restart local v1    # "i":I
    .restart local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    .line 7919
    .end local v1    # "i":I
    .end local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13    # "i":I
    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13    # "i":I
    .restart local v1    # "i":I
    .restart local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    .line 7918
    .end local v1    # "i":I
    .end local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13    # "i":I
    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .line 7915
    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v13, v1, -0x1

    move-object/from16 v1, p8

    .end local v1    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_0

    .line 7929
    .end local v13    # "i":I
    :cond_5
    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "sendDelete"    # Z
    .param p6, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7890
    move-object v9, p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 7891
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7892
    return-void

    .line 7895
    :cond_0
    move-object v11, p1

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 7897
    .local v12, "pkg":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 7898
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package for group summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7899
    :cond_1
    return-void

    .line 7902
    :cond_2
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7904
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7906
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "rank"    # I
    .param p5, "count"    # I
    .param p6, "wasPosted"    # Z
    .param p7, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7414
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 7417
    .local v12, "canceledKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7419
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 7420
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 7424
    :cond_0
    if-eqz p2, :cond_1

    .line 7425
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 7426
    .local v4, "deleteIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_1

    .line 7429
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 7430
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 7432
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7437
    goto :goto_0

    .line 7433
    :catch_0
    move-exception v0

    .line 7436
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationService"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7442
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v4    # "deleteIntent":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    if-eqz p6, :cond_7

    .line 7444
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7445
    const/16 v0, 0x12

    if-eq v11, v0, :cond_2

    .line 7446
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 7448
    :cond_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v0, v2, v11, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 7449
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$15;

    invoke-direct {v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7458
    :cond_3
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 7459
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 7460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 7462
    .local v5, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 7463
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_4

    .line 7464
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7468
    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7466
    :catch_1
    move-exception v0

    .line 7468
    :cond_4
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7473
    .end local v5    # "identity":J
    :cond_5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7474
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 7475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7477
    .local v4, "identity":J
    :try_start_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7480
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7481
    goto :goto_2

    .line 7480
    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7485
    .end local v4    # "identity":J
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7490
    :cond_7
    const/4 v0, 0x2

    if-eq v11, v0, :cond_8

    const/4 v0, 0x3

    if-eq v11, v0, :cond_8

    packed-switch v11, :pswitch_data_0

    goto :goto_3

    .line 7499
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_3

    .line 7495
    :cond_8
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 7496
    nop

    .line 7503
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 7504
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 7505
    .local v13, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7506
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7508
    :cond_9
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/util/ArrayMap;

    .line 7509
    .local v14, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_a

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7510
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7514
    :cond_a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 7516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 7517
    .local v9, "now":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x5

    .line 7518
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 7519
    invoke-virtual {v4, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v15

    .line 7520
    .local v15, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v8, p4

    if-eq v8, v3, :cond_b

    move/from16 v7, p5

    if-eq v7, v3, :cond_c

    .line 7521
    const/16 v3, 0x31e

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x573

    .line 7522
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    goto :goto_4

    .line 7520
    :cond_b
    move/from16 v7, p5

    .line 7524
    :cond_c
    :goto_4
    invoke-static {v15}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 7525
    nop

    .line 7526
    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v5

    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v6

    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v16

    .line 7525
    move-object v3, v12

    move/from16 v4, p3

    move/from16 v7, v16

    move/from16 v8, p4

    move-wide/from16 v16, v9

    .end local v9    # "now":J
    .local v16, "now":J
    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 7528
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "wasPosted"    # Z
    .param p5, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7408
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 7409
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 8228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    .line 8229
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 8233
    const-string v0, "Unknown package "

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 8235
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 8238
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8244
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 8245
    return-void

    .line 8239
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gave package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "userId":I
    throw v2

    .line 8236
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "userId":I
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "userId":I
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8242
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "userId":I
    :catch_0
    move-exception v1

    .line 8243
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystem()V
    .locals 3

    .line 8150
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8151
    return-void

    .line 8153
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 8167
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8168
    return-void

    .line 8170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 8171
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .locals 2

    .line 8143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 8144
    return-void

    .line 8146
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 8147
    return-void
.end method

.method private checkCallerIsSystemOrSystemUiOrShell()V
    .locals 3

    .line 8157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 8158
    return-void

    .line 8160
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8161
    return-void

    .line 8163
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8164
    return-void
.end method

.method private checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 19
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p6, "isAutogroup"    # Z

    .line 5685
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5686
    .local v4, "pkg":Ljava/lang/String;
    nop

    .line 5687
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    move v8, v0

    .line 5688
    .local v8, "isSystemNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v9

    .line 5692
    .local v9, "isNotificationFromListener":Z
    const/4 v0, 0x0

    .line 5693
    .local v0, "mustShow":Z
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5694
    .local v10, "b":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    .line 5695
    const-string/jumbo v11, "oneplus.mustShow"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v11, v0

    goto :goto_2

    .line 5694
    :cond_2
    move v11, v0

    .line 5701
    .end local v0    # "mustShow":Z
    .local v11, "mustShow":Z
    :goto_2
    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-nez v11, :cond_a

    .line 5707
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5708
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5709
    .local v0, "callingUid":I
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v14, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v13, :cond_4

    .line 5710
    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_3

    .line 5715
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Instant app "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " cannot create notifications"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v8    # "isSystemNotification":Z
    .end local v9    # "isNotificationFromListener":Z
    .end local v10    # "b":Landroid/os/Bundle;
    .end local v11    # "mustShow":Z
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "userId":I
    .end local p2    # "uid":I
    .end local p3    # "id":I
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local p6    # "isAutogroup":Z
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5745
    .end local v0    # "callingUid":I
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v8    # "isSystemNotification":Z
    .restart local v9    # "isNotificationFromListener":Z
    .restart local v10    # "b":Landroid/os/Bundle;
    .restart local v11    # "mustShow":Z
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "uid":I
    .restart local p3    # "id":I
    .restart local p4    # "tag":Ljava/lang/String;
    .restart local p5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local p6    # "isAutogroup":Z
    :catchall_0
    move-exception v0

    move/from16 v7, p3

    move/from16 v16, v8

    move-object/from16 v8, p4

    goto/16 :goto_6

    .line 5720
    .restart local v0    # "callingUid":I
    :cond_4
    :goto_3
    :try_start_2
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v14, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v13, :cond_8

    .line 5721
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v13

    if-nez v13, :cond_7

    if-nez p6, :cond_7

    .line 5724
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v13, v4}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v13

    .line 5725
    .local v13, "appEnqueueRate":F
    iget v14, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v14, v13, v14

    if-lez v14, :cond_6

    .line 5726
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 5727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5728
    .local v14, "now":J
    move/from16 v16, v8

    .end local v8    # "isSystemNotification":Z
    .local v16, "isSystemNotification":Z
    :try_start_4
    iget-wide v7, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v6, v14, v7

    const-wide/16 v17, 0x1388

    cmp-long v6, v6, v17

    if-lez v6, :cond_5

    .line 5729
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package enqueue rate is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ". Shedding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5730
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5729
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    iput-wide v14, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 5733
    :cond_5
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v6, 0x0

    return v6

    .line 5745
    .end local v0    # "callingUid":I
    .end local v13    # "appEnqueueRate":F
    .end local v14    # "now":J
    :catchall_1
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v8, p4

    goto :goto_6

    .line 5725
    .end local v16    # "isSystemNotification":Z
    .restart local v0    # "callingUid":I
    .restart local v8    # "isSystemNotification":Z
    .restart local v13    # "appEnqueueRate":F
    :cond_6
    move/from16 v16, v8

    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    goto :goto_4

    .line 5721
    .end local v13    # "appEnqueueRate":F
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :cond_7
    move/from16 v16, v8

    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    goto :goto_4

    .line 5745
    .end local v0    # "callingUid":I
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :catchall_2
    move-exception v0

    move/from16 v16, v8

    move/from16 v7, p3

    goto :goto_5

    .line 5720
    .restart local v0    # "callingUid":I
    :cond_8
    move/from16 v16, v8

    .line 5738
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_4
    move/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_5
    invoke-virtual {v1, v4, v2, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    .line 5739
    .local v13, "count":I
    const/16 v14, 0x19

    if-lt v13, v14, :cond_9

    .line 5740
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 5741
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted or enqueued "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " notifications.  Not showing more.  package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5743
    monitor-exit v12

    const/4 v6, 0x0

    return v6

    .line 5745
    .end local v0    # "callingUid":I
    .end local v13    # "count":I
    :cond_9
    monitor-exit v12

    goto :goto_7

    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :catchall_3
    move-exception v0

    move/from16 v7, p3

    move/from16 v16, v8

    :goto_5
    move-object/from16 v8, p4

    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_6
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    .line 5701
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :cond_a
    move/from16 v7, p3

    move/from16 v16, v8

    move-object/from16 v8, p4

    .line 5749
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v4, v12}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5750
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v6, 0x6

    .line 5751
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v6, 0x33f

    .line 5752
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5750
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5753
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    .line 5754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored enqueue for snoozed notification "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NotificationService"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    :cond_b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 5757
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5758
    const/4 v0, 0x0

    return v0

    .line 5763
    :cond_c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5765
    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5766
    .local v0, "nty":Landroid/app/Notification;
    iget v12, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x20

    if-nez v12, :cond_e

    iget v12, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_d

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    move v12, v6

    .line 5768
    .local v12, "isNoClear":Z
    :goto_9
    if-eqz v12, :cond_f

    .line 5769
    iget-object v13, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v14

    iget-object v15, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5770
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v15

    .line 5769
    invoke-static {v13, v14, v15, v6}, Lcom/android/server/am/OpAppRecordInjector;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    .line 5773
    :cond_f
    const/4 v6, 0x0

    return v6

    .line 5776
    .end local v0    # "nty":Landroid/app/Notification;
    .end local v12    # "isNoClear":Z
    :cond_10
    return v6
.end method

.method private checkRestrictedCategories(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 8184
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 8185
    return-void

    .line 8190
    :cond_0
    goto :goto_0

    .line 8187
    :catch_0
    move-exception v0

    .line 8188
    .local v0, "re":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NotificationService"

    const-string v2, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8191
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8192
    const-string v1, "car_warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8193
    const-string v1, "car_information"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8194
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 8196
    :cond_3
    return-void
.end method

.method static clamp(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 7361
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4858
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4859
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4861
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 4862
    .local v1, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_0

    .line 4863
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 4864
    .local v8, "wasPosted":Z
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 4867
    .end local v1    # "removed":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "wasPosted":Z
    :cond_0
    return-void
.end method

.method private clearLightsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 1295
    return-void
.end method

.method private clearSoundLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 1267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1269
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1270
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_0

    .line 1271
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1275
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1273
    :catch_0
    move-exception v2

    .line 1275
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1276
    nop

    .line 1277
    return-void
.end method

.method private clearVibrateLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1284
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    nop

    .line 1288
    return-void

    .line 1286
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;

    .line 4877
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 4878
    .local v1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4879
    :try_start_0
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4880
    .local v0, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_0

    .line 4883
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 4931
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v0

    move/from16 v11, p1

    goto/16 :goto_1

    .line 4885
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    :try_start_3
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4886
    .local v3, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move v11, v4

    .line 4887
    .end local p1    # "userId":I
    .local v11, "userId":I
    :try_start_4
    iget-object v4, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4888
    .local v4, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 4889
    :try_start_5
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object v4, v5

    .line 4891
    :cond_1
    :try_start_6
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4892
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4894
    nop

    .line 4895
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.appInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 4897
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4898
    .local v6, "extras":Landroid/os/Bundle;
    const-string v7, "android.appInfo"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4899
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    .line 4900
    .local v7, "channelId":Ljava/lang/String;
    new-instance v12, Landroid/app/Notification$Builder;

    .line 4901
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4902
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 4903
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v14, 0x2

    .line 4904
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string/jumbo v14, "ranker_group"

    .line 4905
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x400

    .line 4906
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x200

    .line 4907
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 4908
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 4909
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 4910
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 4911
    .local v12, "summaryNotification":Landroid/app/Notification;
    iget-object v13, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4912
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v25, v13

    .line 4913
    .local v25, "appIntent":Landroid/content/Intent;
    if-eqz v25, :cond_2

    .line 4914
    nop

    .line 4915
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 4914
    move-object/from16 v16, v25

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 4917
    :cond_2
    :try_start_8
    new-instance v26, Landroid/service/notification/StatusBarNotification;

    .line 4918
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4919
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7fffffff

    const-string/jumbo v17, "ranker_group"

    .line 4921
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v18

    .line 4922
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v19

    .line 4923
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    const-string/jumbo v22, "ranker_group"

    .line 4924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v13, v26

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v24}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object/from16 v13, v26

    .line 4925
    .local v13, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v14, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4926
    move-object/from16 v16, v1

    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v16, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-direct {v14, v15, v13, v1}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v14

    .line 4927
    .end local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    nop

    .line 4928
    :try_start_a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v14

    .line 4927
    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4929
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v9, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object v12, v1

    goto :goto_0

    .line 4931
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "channelId":Ljava/lang/String;
    .end local v12    # "summaryNotification":Landroid/app/Notification;
    .end local v13    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v25    # "appIntent":Landroid/content/Intent;
    .restart local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    .line 4892
    .end local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v3    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v4    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v12, v16

    .line 4931
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v12, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4932
    if-eqz v12, :cond_4

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4933
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 4932
    move-object/from16 v1, p0

    move v2, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4934
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v1, v8, v11, v12}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4936
    :cond_4
    return-void

    .line 4931
    :catchall_2
    move-exception v0

    move-object v1, v12

    goto :goto_1

    .end local v12    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1

    .end local v11    # "userId":I
    .end local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local p1    # "userId":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v11, p1

    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1

    .end local v16    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_5
    move-exception v0

    move-object/from16 v10, p3

    move-object/from16 v16, v1

    move/from16 v11, p1

    .end local p1    # "userId":I
    .restart local v11    # "userId":I
    :goto_1
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_1
.end method

.method private createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromApp"    # Z
    .param p5, "fromListener"    # Z

    .line 2418
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2422
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 2423
    .local v0, "preUpdate":Landroid/app/NotificationChannelGroup;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 2425
    if-nez p4, :cond_0

    .line 2426
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 2428
    :cond_0
    if-nez p5, :cond_1

    .line 2429
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2430
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 2429
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2433
    :cond_1
    return-void
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 4939
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 4940
    const-string v0, "booleanState"

    return-object v0

    .line 4942
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4943
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 4945
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4946
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4947
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 4949
    const-string/jumbo v0, "listenerNoti"

    return-object v0

    .line 4952
    :cond_2
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 4953
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 4955
    const-string/jumbo v0, "listenerCall"

    return-object v0

    .line 4959
    :cond_3
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4960
    const-string v0, "callState"

    return-object v0

    .line 4962
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private doChannelWarningToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "toastText"    # Ljava/lang/CharSequence;

    .line 5636
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 5646
    return-void
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4966
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4968
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4969
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4970
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4971
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4972
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4975
    goto :goto_0

    .line 4973
    :catch_0
    move-exception v1

    .line 4974
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4976
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4977
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 5054
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5057
    .local v1, "N":I
    if-lez v1, :cond_2

    .line 5058
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5059
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5060
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5061
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 5062
    :cond_0
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 5059
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5064
    .end local v2    # "i":I
    :cond_1
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    .end local v1    # "N":I
    :cond_2
    monitor-exit v0

    .line 5067
    return-void

    .line 5066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4980
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 4981
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4982
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4983
    .local v0, "N":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_1

    .line 4984
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v13, v4

    .line 4985
    .local v13, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_0

    iget-object v4, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 4986
    :cond_0
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x1

    move-object v4, v13

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4983
    .end local v13    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 4989
    .end local v12    # "i":I
    :cond_1
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    .line 4990
    const/4 v4, 0x0

    move v12, v4

    .restart local v12    # "i":I
    :goto_2
    if-ge v12, v0, :cond_3

    .line 4991
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v13, v4

    .line 4992
    .restart local v13    # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2

    iget-object v4, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 4993
    :cond_2
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4990
    .end local v13    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 4996
    .end local v12    # "i":I
    :cond_3
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 4997
    .local v12, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    .line 4998
    const/4 v4, 0x0

    move v13, v4

    .local v13, "i":I
    :goto_4
    if-ge v13, v0, :cond_5

    .line 4999
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 5000
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_4

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_5

    .line 5001
    :cond_4
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x2

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4998
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 5005
    .end local v13    # "i":I
    :cond_5
    const-wide v4, 0x10b00000002L

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 5006
    .local v4, "zenLog":J
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v10}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 5007
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 5008
    .local v7, "suppressor":Landroid/content/ComponentName;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5009
    .end local v7    # "suppressor":Landroid/content/ComponentName;
    goto :goto_6

    .line 5010
    :cond_6
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5012
    const-wide v6, 0x10b00000003L

    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 5013
    .local v6, "listenersToken":J
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v8, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5014
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5016
    const-wide v8, 0x10500000004L

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v10, v8, v9, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5018
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_7
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v9, v13, :cond_8

    .line 5019
    const-wide v13, 0x20b00000005L

    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 5022
    .local v13, "effectsToken":J
    move/from16 v16, v9

    .end local v9    # "i":I
    .local v16, "i":I
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 5023
    move/from16 v8, v16

    .end local v16    # "i":I
    .local v8, "i":I
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 5022
    move-wide v15, v4

    const-wide v3, 0x10500000001L

    .end local v4    # "zenLog":J
    .local v15, "zenLog":J
    invoke-virtual {v10, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5024
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 5025
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 5026
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "j":I
    :goto_8
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v5, v9, :cond_7

    .line 5027
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 5028
    .local v9, "componentName":Landroid/content/ComponentName;
    move/from16 v17, v5

    .end local v5    # "j":I
    .local v17, "j":I
    const-wide v4, 0x20b00000003L

    invoke-virtual {v9, v10, v4, v5}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5026
    .end local v9    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v5, v17, 0x1

    const/4 v4, 0x0

    .end local v17    # "j":I
    .restart local v5    # "j":I
    goto :goto_8

    :cond_7
    move/from16 v17, v5

    .line 5032
    .end local v5    # "j":I
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5018
    .end local v3    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v13    # "effectsToken":J
    add-int/lit8 v9, v8, 0x1

    move-object/from16 v3, p1

    move-wide v4, v15

    const/4 v8, 0x0

    .end local v8    # "i":I
    .local v9, "i":I
    goto :goto_7

    .end local v15    # "zenLog":J
    .restart local v4    # "zenLog":J
    :cond_8
    move-wide v15, v4

    move v8, v9

    .line 5035
    .end local v4    # "zenLog":J
    .end local v9    # "i":I
    .restart local v15    # "zenLog":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 5037
    .local v3, "assistantsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5038
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5040
    const-wide v8, 0x10b00000007L

    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 5041
    .local v8, "conditionsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5042
    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5044
    const-wide v13, 0x10b00000008L

    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 5045
    .local v13, "rankingToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5046
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5047
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5048
    .end local v0    # "N":I
    .end local v3    # "assistantsToken":J
    .end local v6    # "listenersToken":J
    .end local v8    # "conditionsToken":J
    .end local v12    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "rankingToken":J
    .end local v15    # "zenLog":J
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5050
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5051
    return-void

    .line 5048
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private exitIdle()V
    .locals 2

    .line 2352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v1, "notification interaction"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2356
    :cond_0
    goto :goto_0

    .line 2355
    :catch_0
    move-exception v0

    .line 2357
    :goto_0
    return-void
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 7988
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7989
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7990
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7991
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7992
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7993
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7994
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7990
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7997
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8006
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    .line 8007
    return-object v1

    .line 8009
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 8010
    return-object v1

    .line 8012
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 8060
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8061
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8062
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8063
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    return-object v2

    .line 8061
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8066
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 4
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 8031
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8032
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8033
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 8034
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8035
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8036
    return-object v2

    .line 8032
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8039
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7213
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 8045
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8046
    .local v0, "matching":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8047
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8048
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 8049
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8050
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8051
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8047
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8054
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;

    .line 5513
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5514
    .local v0, "notification":Landroid/app/Notification;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5515
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 5517
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5519
    :goto_0
    return-void
.end method

.method static getDefaultVibration()[J
    .locals 1

    .line 1780
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-static {}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->getDefaultVibration()[J

    move-result-object v0

    return-object v0
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .locals 3

    .line 2256
    nop

    .line 2257
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 2258
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;-><init>(ILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .line 1764
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1765
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 1766
    return-object p3

    .line 1768
    :cond_0
    array-length v1, v0

    if-le v1, p2, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    array-length v1, v0

    .line 1769
    .local v1, "len":I
    :goto_0
    new-array v2, v1, [J

    .line 1770
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1771
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 1770
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1773
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method private getRealUserId(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 2656
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2456
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2457
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2459
    .local v2, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2460
    .local v4, "info":Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2461
    .end local v4    # "info":Landroid/content/ComponentName;
    goto :goto_1

    .line 2456
    .end local v2    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2464
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I
    .param p4, "targetPkg"    # Ljava/lang/String;
    .param p5, "targetUserId"    # I

    .line 7602
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7604
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7606
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 7607
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 7609
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 7606
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7614
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 7611
    :catch_0
    move-exception v2

    .line 7614
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7615
    nop

    .line 7616
    return-void

    .line 7602
    .end local v0    # "ident":J
    :cond_1
    :goto_1
    return-void
.end method

.method private handleDelayPlaySound()V
    .locals 5

    .line 6889
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 6890
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_1

    .line 6891
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing delayed sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with attributes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mTempAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6893
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mTempUserHandle:Landroid/os/UserHandle;

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mTempLooping:Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mTempAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6897
    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    :cond_1
    goto :goto_0

    .line 6896
    :catch_0
    move-exception v0

    .line 6898
    :goto_0
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 7042
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7044
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v1

    .line 7045
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 7046
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 7048
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 7049
    return-void

    .line 7048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6373
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6374
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 6375
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6378
    iget v0, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 6381
    :cond_0
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 6382
    .local v12, "group":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v13

    .line 6384
    .local v13, "isSummary":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    move-object v14, v1

    .line 6385
    .local v14, "oldN":Landroid/app/Notification;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v15, v0

    .line 6386
    .local v15, "oldGroup":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    .line 6388
    .local v16, "oldIsSummary":Z
    if-eqz v16, :cond_5

    .line 6389
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6390
    .local v0, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    if-eq v0, v9, :cond_5

    .line 6392
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "<null>"

    .line 6393
    .local v1, "removedKey":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    .end local v0    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "removedKey":Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_6

    .line 6398
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6405
    :cond_6
    if-eqz v16, :cond_8

    if-eqz v13, :cond_7

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 6406
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6409
    :cond_8
    return-void
.end method

.method private handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 7061
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kill Token Timeout token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7062
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7063
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;I)V

    .line 7064
    monitor-exit v0

    .line 7065
    return-void

    .line 7064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .line 7236
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 7238
    monitor-exit v0

    .line 7239
    return-void

    .line 7238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .line 7242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 7244
    monitor-exit v0

    .line 7245
    return-void

    .line 7244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 7249
    move v0, p1

    .line 7250
    .local v0, "preferencesChanged":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 7251
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 7252
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 7253
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7255
    if-eqz v0, :cond_0

    .line 7256
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 7258
    :cond_0
    return-void
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .line 7102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_0

    return-void

    .line 7103
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/RankingReconsideration;

    .line 7104
    .local v0, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 7106
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7107
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7108
    .local v2, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_1

    .line 7109
    monitor-exit v1

    return-void

    .line 7111
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 7112
    .local v3, "indexBefore":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 7113
    .local v4, "interceptBefore":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    .line 7114
    .local v5, "visibilityBefore":I
    invoke-virtual {v0, v2}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7115
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7116
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7117
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v6

    .line 7118
    .local v6, "indexAfter":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v7

    .line 7119
    .local v7, "interceptAfter":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 7120
    .local v8, "visibilityAfter":I
    if-ne v3, v6, :cond_3

    if-ne v4, v7, :cond_3

    if-eq v5, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    .line 7122
    .local v9, "changed":Z
    :goto_1
    if-eqz v4, :cond_4

    if-nez v7, :cond_4

    .line 7123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7124
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7126
    .end local v2    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "indexBefore":I
    .end local v4    # "interceptBefore":Z
    .end local v5    # "visibilityBefore":I
    .end local v6    # "indexAfter":I
    .end local v7    # "interceptAfter":Z
    .end local v8    # "visibilityAfter":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7127
    if-eqz v9, :cond_5

    .line 7128
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 7130
    :cond_5
    return-void

    .line 7126
    .end local v9    # "changed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .locals 3

    .line 7217
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 7219
    monitor-exit v0

    .line 7220
    return-void

    .line 7219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4871
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4872
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification;)Z
    .locals 5
    .param p1, "n"    # Landroid/app/Notification;

    .line 5564
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5565
    .local v0, "actions":[Landroid/app/Notification$Action;
    if-eqz v0, :cond_1

    .line 5567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5568
    aget-object v2, v0, v1

    .line 5569
    .local v2, "action":Landroid/app/Notification$Action;
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v3

    .line 5570
    .local v3, "inputs":[Landroid/app/RemoteInput;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 5571
    const/4 v4, 0x1

    return v4

    .line 5567
    .end local v2    # "action":Landroid/app/Notification$Action;
    .end local v3    # "inputs":[Landroid/app/RemoteInput;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5575
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initLockAppList()V
    .locals 13

    .line 9610
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9612
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 9613
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 9615
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 9616
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 9617
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 9618
    .local v5, "packageCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initLockAppList for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotificationService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9619
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 9620
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9621
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 9623
    .local v9, "key":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v3, v8, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v10

    .line 9624
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v12, 0x3e9

    invoke-interface {v11, v12, v10, v8}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 9626
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9627
    const-string/jumbo v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9628
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9629
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9630
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " is locked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9634
    .end local v10    # "uid":I
    :cond_0
    goto :goto_2

    .line 9632
    :catch_0
    move-exception v10

    .line 9633
    .local v10, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to get app lock mode for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9619
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/StringBuilder;
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9636
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "packageCount":I
    .end local v6    # "p":I
    :cond_1
    goto/16 :goto_0

    .line 9637
    :cond_2
    return-void
.end method

.method private isBlocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 5816
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5817
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 5827
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    .line 5828
    .local v2, "isGroupBlocked":Z
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 5830
    .local v3, "isPreferencesImportanceNone":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 5831
    .local v6, "isRecordImportanceNone":Z
    :goto_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    .line 5833
    .local v4, "isBlocked":Z
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 5834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationRecord is blocked. Package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isGroupBlocked: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isPreferencesImportanceNone: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRecordImportanceNone: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NotificationService"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    :cond_4
    return v4
.end method

.method private isCallerAndroid(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 8174
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 8175
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8174
    :goto_0
    return v0
.end method

.method private isCallerSameApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 8249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8250
    const/4 v0, 0x1

    return v0

    .line 8251
    :catch_0
    move-exception v0

    .line 8252
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private isCallerSameApp(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 8258
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8259
    const/4 v0, 0x1

    return v0

    .line 8260
    :catch_0
    move-exception v0

    .line 8261
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 6359
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;

    .line 5526
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 5527
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v3

    .line 5528
    .local v3, "metadata":Landroid/app/Notification$BubbleMetadata;
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 5529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    .line 5532
    .local v6, "intentCanBubble":Z
    :goto_0
    if-eqz v6, :cond_2

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5533
    move/from16 v8, p3

    invoke-virtual {v7, v1, v8}, Lcom/android/server/notification/PreferencesHelper;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5534
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5535
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5536
    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    .line 5533
    :cond_1
    move-object/from16 v9, p1

    goto :goto_1

    .line 5532
    :cond_2
    move-object/from16 v9, p1

    move/from16 v8, p3

    .line 5536
    :cond_3
    :goto_1
    move v7, v5

    .line 5539
    .local v7, "canBubble":Z
    :goto_2
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5540
    invoke-virtual {v10, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x64

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    move v10, v5

    .line 5544
    .local v10, "appIsForeground":Z
    :goto_3
    iget-object v11, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_5

    .line 5545
    iget-object v11, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.people.list"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_4

    .line 5546
    :cond_5
    const/4 v11, 0x0

    :goto_4
    nop

    .line 5547
    .local v11, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    iget-object v12, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v13, "call"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    move v12, v5

    .line 5550
    .local v12, "isForegroundCall":Z
    :goto_5
    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v13

    .line 5551
    .local v13, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v14, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 5552
    .local v14, "isMessageStyle":Z
    if-eqz v14, :cond_7

    .line 5553
    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->hasValidRemoteInput(Landroid/app/Notification;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    if-eqz v11, :cond_9

    .line 5554
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    if-eqz v12, :cond_9

    :cond_8
    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    move v15, v5

    .line 5557
    .local v15, "notificationAppropriateToBubble":Z
    :goto_6
    if-eqz p4, :cond_a

    .line 5558
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    move v4, v5

    .line 5559
    .local v4, "bubbleUpdate":Z
    :goto_7
    if-eqz v7, :cond_c

    if-nez v15, :cond_b

    if-nez v10, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    const/16 v16, 0x1

    goto :goto_8

    :cond_c
    move/from16 v16, v5

    :goto_8
    return v16
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 6903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6905
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6907
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6908
    nop

    .line 6909
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 6910
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 6911
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 6909
    :goto_1
    return v3

    .line 6907
    .end local v2    # "currentUser":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 8396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8397
    .local v0, "identity":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 8399
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8399
    return v3

    .line 8406
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 8402
    :catch_0
    move-exception v3

    .line 8404
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .line 8406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8404
    return v4

    .line 8400
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 8401
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Could not talk to package manager service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local v2    # "userId":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8406
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "identity":J
    .restart local v2    # "userId":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6103
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6104
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 6106
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8388
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8389
    const/4 v0, 0x0

    return v0

    .line 8392
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private listenForCallState()V
    .locals 3

    .line 8275
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$18;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 8283
    return-void
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 32
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8292
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8297
    .local v2, "rankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8298
    .local v3, "lockedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8299
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 8300
    .local v4, "L":I
    const/4 v6, 0x0

    .local v6, "l":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 8301
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 8302
    .local v7, "item":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 8303
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8300
    .end local v7    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8310
    .end local v4    # "L":I
    .end local v6    # "l":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v6, 0x0

    if-ge v4, v1, :cond_5

    .line 8311
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 8312
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v9, p1

    invoke-direct {v0, v8, v9}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 8313
    goto/16 :goto_2

    .line 8315
    :cond_2
    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 8316
    .local v8, "key":Ljava/lang/String;
    new-instance v10, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v10}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    move-object v15, v10

    .line 8318
    .local v15, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    nop

    .line 8320
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8321
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v10

    .line 8322
    xor-int/lit8 v13, v10, 0x1

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    .line 8323
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v16

    .line 8324
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v17

    .line 8325
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v18

    iget-object v10, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8326
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v19

    .line 8327
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v20

    .line 8328
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v21

    .line 8329
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v22

    .line 8330
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v23

    .line 8331
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v24

    .line 8332
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v25

    .line 8333
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v26

    .line 8334
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v10

    if-eqz v10, :cond_4

    :cond_3
    move v6, v5

    .line 8335
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v28

    .line 8336
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v29

    .line 8343
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v30

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8344
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    .line 8318
    move-object v10, v15

    move-object v11, v8

    move-object v5, v15

    .end local v15    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .local v5, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-wide/from16 v25, v26

    move/from16 v27, v6

    invoke-virtual/range {v10 .. v31}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 8348
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8310
    .end local v5    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "key":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v9, p1

    .line 8351
    .end local v4    # "i":I
    new-instance v4, Landroid/service/notification/NotificationRankingUpdate;

    new-array v5, v6, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 8352
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v4, v5}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 8351
    return-object v4
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannelGroup;
    .param p4, "update"    # Landroid/app/NotificationChannelGroup;

    .line 2438
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2439
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 2442
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2441
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2444
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    .line 2443
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2445
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2446
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2447
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2439
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    :cond_0
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about group change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2452
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannel;
    .param p4, "update"    # Landroid/app/NotificationChannel;

    .line 2397
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    .line 2399
    :cond_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2400
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_3

    .line 2401
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 2404
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2403
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2406
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 2405
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2407
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2408
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2409
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2401
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    :cond_3
    goto :goto_1

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about channel change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2414
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 7683
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 7684
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7683
    :goto_1
    return v0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 7668
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 7672
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 7674
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7668
    :goto_1
    return v0
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .locals 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"    # Landroid/net/Uri;

    .line 6707
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6713
    .local v0, "looping":Z
    :goto_0
    const/4 v3, 0x0

    .line 6714
    .local v3, "alwaysInHeadset":Z
    new-array v4, v2, [I

    const/16 v5, 0xaa

    aput v5, v4, v1

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6715
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHeadsetMode:I

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    move v3, v4

    .line 6718
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    const-string v5, "NotificationService"

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6720
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 6719
    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_a

    .line 6725
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6727
    .local v6, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 6728
    .local v4, "player":Landroid/media/IRingtonePlayer;
    if-eqz v4, :cond_9

    .line 6731
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, " with attributes "

    const-string v10, "Playing sound "

    if-eqz v8, :cond_6

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", scenesId: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", default: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/android/server/notification/NotificationManagerService;->mIsDefaultVibration:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6732
    :cond_6
    iget v8, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_7

    .line 6733
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    .line 6735
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mTempUserHandle:Landroid/os/UserHandle;

    .line 6736
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mTempLooping:Z

    .line 6737
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mTempAudioAttributes:Landroid/media/AudioAttributes;

    .line 6740
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6741
    nop

    .line 6759
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6741
    return v2

    .line 6743
    :cond_7
    :try_start_2
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6744
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6743
    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    :cond_8
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 6748
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v9

    .line 6747
    invoke-interface {v4, p2, v8, v0, v9}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6749
    nop

    .line 6759
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6749
    return v2

    .line 6759
    .end local v4    # "player":Landroid/media/IRingtonePlayer;
    :cond_9
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6760
    goto :goto_4

    .line 6759
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 6751
    :catch_0
    move-exception v2

    .line 6754
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v4, :cond_9

    .line 6755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get ringtone player: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6759
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 6764
    .end local v6    # "identity":J
    :cond_a
    :goto_4
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v2, :cond_b

    .line 6765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not playing sound, isAudioFocusExclusive: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6766
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", alwaysInHeadset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6765
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6770
    :cond_b
    return v1
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z
    .locals 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "vibration"    # [J
    .param p3, "delayVibForSound"    # Z

    .line 6777
    const-string v0, "NotificationService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6781
    .local v1, "identity":J
    nop

    .line 6782
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6783
    .local v4, "insistent":Z
    :goto_0
    nop

    .line 6784
    if-eqz v4, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    .line 6783
    :goto_1
    invoke-static {p2, v6}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6789
    .end local v4    # "insistent":Z
    .local v3, "effect":Landroid/os/VibrationEffect;
    nop

    .line 6791
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z

    if-eqz v4, :cond_2

    const/4 p3, 0x0

    .line 6793
    :cond_2
    if-eqz p3, :cond_3

    .line 6794
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$IYb2LsvzgH956pBM2VntPM0-21A;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$IYb2LsvzgH956pBM2VntPM0-21A;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6823
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 6830
    :cond_3
    const-string/jumbo v4, "notice_vibrate_intensity"

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->tryVibrateSceneBySound(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 6833
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 6834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playing vibration effect: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", attributes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6835
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6834
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Notification"

    .line 6839
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v11

    .line 6838
    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6843
    :cond_5
    :goto_2
    nop

    .line 6845
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6843
    return v5

    .line 6845
    .end local v3    # "effect":Landroid/os/VibrationEffect;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 6785
    :catch_0
    move-exception v4

    .line 6786
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating vibration waveform with pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6787
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6786
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6788
    nop

    .line 6845
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6788
    return v3

    .line 6845
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7194
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 7197
    :cond_0
    return-void
.end method

.method private registerDeviceConfigChange()V
    .locals 3

    .line 2240
    nop

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2240
    const-string/jumbo v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2252
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2468
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 2472
    const/4 v0, 0x0

    .line 2474
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2475
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2476
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2478
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    and-int v4, v2, p2

    if-ne v4, v2, :cond_1

    .line 2479
    :cond_0
    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2474
    .end local v2    # "hint":I
    .end local v3    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2483
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7390
    const/4 v0, 0x0

    .line 7391
    .local v0, "wasPosted":Z
    const/4 v1, 0x0

    .line 7392
    .local v1, "recordInList":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 7394
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7395
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7396
    const/4 v0, 0x1

    .line 7398
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 7400
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7402
    :cond_1
    return v0
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 6
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I

    .line 7619
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7621
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7623
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 7625
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 7627
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p2, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 7623
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7630
    nop

    .line 7631
    return-void

    .line 7629
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 7619
    .end local v0    # "ident":J
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .line 9602
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 9603
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 7029
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7030
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7031
    .local v0, "m":Landroid/os/Message;
    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xdac

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    .line 7035
    .local v2, "delay":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    .line 7037
    .end local v2    # "delay":I
    .local v1, "delay":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7038
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .line 7228
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 7229
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7233
    return-void
.end method

.method private scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 7054
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7055
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7056
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7057
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 7223
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 7224
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7225
    return-void
.end method

.method private sendBroadcastToSmartDrive(Z)V
    .locals 5
    .param p1, "isKeepAlive"    # Z

    .line 9665
    const-string v0, "NotificationService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->isDriveNavigationMode(Ljava/lang/String;I)Z

    move-result v1

    .line 9666
    .local v1, "switchOn":Z
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    .line 9668
    return-void

    .line 9670
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "heytap.intent.action.DRIVING_MODE_NAV"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9671
    .local v2, "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9672
    const-string/jumbo v3, "smart_drive_switch"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9673
    const-string/jumbo v3, "turn_on_from"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9674
    const-string v3, "com.heytap.speechassist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9675
    const-string v3, "Notification--sendBroadcastToSmartDrive"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9676
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9679
    .end local v1    # "switchOn":Z
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 9677
    :catch_0
    move-exception v1

    .line 9678
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification--sendBroadcastToSmartDrive--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9680
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .line 2288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2289
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2293
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getAllowedPackages()Ljava/util/Set;

    move-result-object v1

    .line 2294
    .local v1, "dndApprovedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2295
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2297
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 2298
    :cond_0
    return-void
.end method

.method private setKeepAliveAppIfNeed(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "isKeepAlive"    # Z

    .line 9642
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNavigationModeIfNeed(Ljava/lang/String;IZ)V

    .line 9643
    return-void
.end method

.method private setNavigationModeIfNeed(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "isKeepAlive"    # Z

    .line 9646
    const/4 v0, 0x0

    .line 9647
    .local v0, "shouldSetDriveMode":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9648
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveAppWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNavigationNotificationIDList:Ljava/util/List;

    .line 9649
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9650
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveByNotificationMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    const v3, 0x5f48170

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9651
    const/4 v0, 0x1

    .line 9653
    :cond_1
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 9654
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification--setNavigationModeIfNeed--pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isKeepAlive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNavigationNotificationIDList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mKeepAliveByNotificationMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveByNotificationMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9657
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9658
    if-eqz v0, :cond_3

    .line 9659
    invoke-direct {p0, p3}, Lcom/android/server/notification/NotificationManagerService;->sendBroadcastToSmartDrive(Z)V

    .line 9661
    :cond_3
    return-void

    .line 9657
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private stopVibrate()V
    .locals 2

    .line 6883
    const-string v0, "NotificationService"

    const-string/jumbo v1, "stopVibrate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6884
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 6885
    return-void
.end method

.method private tryVibrateSceneBySound(Ljava/lang/String;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .line 6851
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 6852
    .local v1, "INTENSITY":[I
    const/4 v2, 0x0

    .line 6854
    .local v2, "isDynamicVib":Z
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 6855
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 6856
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v3, p1, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 6857
    .local v3, "intensityIndex":I
    aget v4, v1, v3

    .line 6859
    .local v4, "intensity":I
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mTempAudioAttributes:Landroid/media/AudioAttributes;

    const-string v7, "OpNotification"

    invoke-static {v7, v6}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v6

    .line 6860
    .local v6, "muteByGame":Z
    if-eqz v6, :cond_0

    .line 6861
    iget v7, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    add-int/lit16 v7, v7, 0x7d0

    iput v7, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    .line 6864
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    invoke-virtual {v7, v8}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v7

    .line 6865
    .local v7, "duration":I
    new-array v0, v0, [J

    int-to-long v8, v4

    aput-wide v8, v0, v5

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v8

    const/4 v8, 0x2

    int-to-long v9, v7

    aput-wide v9, v0, v8

    .line 6867
    .local v0, "pattern":[J
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v0, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 6868
    const/4 v2, 0x1

    .line 6869
    const/16 v5, 0x7d0

    .line 6870
    .local v5, "delay":I
    if-eqz v6, :cond_1

    .line 6871
    move v5, v7

    .line 6874
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set Vibrate SceneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", duration:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", intensity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", delay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", muteByGame:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NotificationService"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6876
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 6877
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long v10, v5

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6879
    .end local v0    # "pattern":[J
    .end local v3    # "intensityIndex":I
    .end local v4    # "intensity":I
    .end local v5    # "delay":I
    .end local v6    # "muteByGame":Z
    .end local v7    # "duration":I
    :cond_2
    return v2

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2341
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 2342
    .local v0, "updatedSuppressedEffects":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 2343
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 2344
    .local v2, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 2345
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 2346
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 2347
    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 2348
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2544
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 2545
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2546
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2547
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 2548
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2332
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2333
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2334
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 2335
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 2336
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 2337
    return-void
.end method

.method private updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromListener"    # Z

    .line 2361
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    .line 2363
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2364
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 2363
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2366
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v15

    .line 2368
    .local v15, "profileIds":Landroid/util/IntArray;
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v10

    .line 2369
    .local v10, "N":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 2370
    invoke-virtual {v15, v9}, Landroid/util/IntArray;->get(I)I

    move-result v16

    .line 2371
    .local v16, "profileId":I
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v8, v16

    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    move/from16 v9, v17

    move/from16 v17, v10

    .end local v10    # "N":I
    .local v17, "N":I
    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2369
    .end local v16    # "profileId":I
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .end local v17    # "N":I
    .restart local v10    # "N":I
    :cond_0
    move/from16 v19, v9

    move/from16 v17, v10

    .line 2377
    .end local v9    # "i":I
    .end local v10    # "N":I
    .end local v15    # "profileIds":Landroid/util/IntArray;
    :cond_1
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2380
    .local v0, "preUpdate":Landroid/app/NotificationChannel;
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 2381
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 2383
    if-nez p4, :cond_2

    .line 2384
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 2386
    .local v1, "modifiedChannel":Landroid/app/NotificationChannel;
    iget-object v2, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2387
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    .line 2386
    invoke-virtual {v2, v12, v3, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2391
    .end local v1    # "modifiedChannel":Landroid/app/NotificationChannel;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2392
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    .line 8122
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 8124
    monitor-exit v0

    .line 8125
    return-void

    .line 8124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;ZI)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 842
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 843
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 844
    const-string/jumbo v2, "notification-policy"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "version"

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V

    .line 847
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 848
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 849
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 850
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/ConditionProviders;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 851
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 852
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 854
    :cond_1
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 856
    return-void
.end method

.method private writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9595
    const-string v0, "allow-secure-notifications-on-lockscreen"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9596
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 9597
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 9596
    const-string/jumbo v3, "value"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9598
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9599
    return-void
.end method


# virtual methods
.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4823
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4824
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_0

    .line 4825
    return-void

    .line 4827
    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4828
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4829
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 4830
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4832
    :cond_1
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1855
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1846
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    :cond_0
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 26
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v2, :cond_0

    .line 6432
    return-void

    .line 6434
    :cond_0
    const/4 v2, 0x0

    .line 6435
    .local v2, "buzz":Z
    const/4 v3, 0x0

    .line 6436
    .local v3, "beep":Z
    const/4 v4, 0x0

    .line 6438
    .local v4, "blink":Z
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 6439
    .local v5, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 6443
    .local v6, "key":Ljava/lang/String;
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    .line 6444
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-le v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 6445
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-lt v7, v8, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    nop

    .line 6448
    .local v7, "aboveThreshold":Z
    if-eqz v6, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 6449
    .local v8, "wasBeep":Z
    :goto_1
    if-eqz v6, :cond_5

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v9

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    .line 6451
    .local v11, "wasBuzz":Z
    :goto_2
    const/4 v12, 0x0

    .line 6452
    .local v12, "hasValidVibrate":Z
    const/4 v13, 0x0

    .line 6453
    .local v13, "hasValidSound":Z
    const/4 v14, 0x0

    .line 6456
    .local v14, "sentAccessibilityEvent":Z
    iget-boolean v15, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    if-le v15, v9, :cond_6

    .line 6457
    iget-object v15, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 6458
    const/4 v14, 0x1

    .line 6461
    :cond_6
    const/16 v16, 0x2

    const-string v15, "NotificationService"

    if-eqz v7, :cond_22

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 6463
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v9, :cond_21

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_21

    .line 6464
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v9

    .line 6465
    .local v9, "soundUri":Landroid/net/Uri;
    if-eqz v9, :cond_7

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    move v13, v10

    .line 6466
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v10

    .line 6468
    .local v10, "vibration":[J
    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "buzz":Z
    .local v18, "buzz":Z
    iput-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDefaultVibration:Z

    .line 6472
    if-nez v10, :cond_8

    if-eqz v13, :cond_8

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6474
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v19, v3

    const/4 v3, 0x1

    .end local v3    # "beep":Z
    .local v19, "beep":Z
    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6477
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 6476
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_9

    .line 6482
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-static {}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->getDefaultVibration()[J

    move-result-object v10

    goto :goto_4

    .line 6472
    .end local v19    # "beep":Z
    .restart local v3    # "beep":Z
    :cond_8
    move/from16 v19, v3

    .line 6485
    .end local v3    # "beep":Z
    .restart local v19    # "beep":Z
    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    move v12, v2

    .line 6487
    if-eqz v12, :cond_b

    .line 6488
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->getDefaultVibration()[J

    move-result-object v2

    invoke-static {v10, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDefaultVibration:Z

    .line 6494
    :cond_b
    iget v2, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    iget v2, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v2, 0x1

    .line 6495
    .local v2, "isUnBlockable":Z
    :goto_7
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v3, :cond_e

    .line 6496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4    # "blink":Z
    .local v20, "blink":Z
    const-string v4, "WLBHelper isUnBlockable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 6495
    .end local v20    # "blink":Z
    .restart local v4    # "blink":Z
    :cond_e
    move/from16 v20, v4

    .line 6500
    .end local v4    # "blink":Z
    .restart local v20    # "blink":Z
    :goto_8
    if-nez v13, :cond_10

    if-eqz v12, :cond_f

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v3, 0x1

    .line 6503
    .local v3, "hasAudibleAlert":Z
    :goto_a
    if-eqz v3, :cond_20

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6504
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->shouldBlockNotifSound(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    if-nez v2, :cond_12

    .line 6505
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/worklife/OPWLBInjector;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBInjector;

    move-result-object v4

    move/from16 v21, v2

    .end local v2    # "isUnBlockable":Z
    .local v21, "isUnBlockable":Z
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oneplus/worklife/OPWLBInjector;->isApplicationBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_11

    .line 6504
    .end local v21    # "isUnBlockable":Z
    .restart local v2    # "isUnBlockable":Z
    :cond_12
    move/from16 v21, v2

    .line 6508
    .end local v2    # "isUnBlockable":Z
    .restart local v21    # "isUnBlockable":Z
    :goto_b
    if-nez v14, :cond_13

    .line 6509
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 6510
    const/4 v14, 0x1

    .line 6512
    :cond_13
    const-string v2, "Interrupting!"

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    nop

    .line 6517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    move/from16 v22, v3

    .end local v3    # "hasAudibleAlert":Z
    .local v22, "hasAudibleAlert":Z
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6516
    invoke-static {v2, v4, v3}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6518
    const-string v2, "Mute in gaming mode"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6519
    return-void

    .line 6521
    :cond_14
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6522
    const-string v2, "Mute on esport mode"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    return-void

    .line 6525
    :cond_15
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mDrivingModeOn:Z

    if-eqz v2, :cond_16

    .line 6526
    const-string v2, "Mute in driving mode"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6527
    return-void

    .line 6533
    :cond_16
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    .line 6534
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateSoundUri:Landroid/net/Uri;

    .line 6535
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z

    .line 6536
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v3, 0x7a

    aput v3, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6538
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDefaultVibration:Z

    if-eqz v3, :cond_17

    .line 6539
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/oneplus/util/RingtoneManagerUtils;->getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    .line 6540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibScenesId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibScenesId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6545
    :cond_17
    if-eqz v13, :cond_19

    .line 6546
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v3, :cond_18

    .line 6547
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 6548
    const/4 v3, 0x1

    .end local v19    # "beep":Z
    .local v3, "beep":Z
    goto :goto_c

    .line 6550
    .end local v3    # "beep":Z
    .restart local v19    # "beep":Z
    :cond_18
    invoke-direct {v0, v1, v9}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v3

    .line 6552
    .end local v19    # "beep":Z
    .restart local v3    # "beep":Z
    :goto_c
    if-eqz v3, :cond_1a

    .line 6553
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_d

    .line 6545
    .end local v3    # "beep":Z
    .restart local v19    # "beep":Z
    :cond_19
    move/from16 v3, v19

    .line 6557
    .end local v19    # "beep":Z
    .restart local v3    # "beep":Z
    :cond_1a
    :goto_d
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6558
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_e

    :cond_1b
    move v4, v2

    .line 6560
    .local v4, "ringerModeSilent":Z
    :goto_e
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v2, :cond_1c

    if-eqz v12, :cond_1c

    if-nez v4, :cond_1c

    .line 6561
    invoke-direct {v0, v1, v10, v13}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z

    move-result v2

    .line 6562
    .end local v18    # "buzz":Z
    .local v2, "buzz":Z
    if-eqz v2, :cond_1d

    .line 6563
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_f

    .line 6568
    .end local v2    # "buzz":Z
    .restart local v18    # "buzz":Z
    :cond_1c
    move/from16 v2, v18

    .end local v18    # "buzz":Z
    .restart local v2    # "buzz":Z
    :cond_1d
    :goto_f
    move/from16 v18, v2

    .end local v2    # "buzz":Z
    .restart local v18    # "buzz":Z
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsSoundPlayDelayed:Z

    if-eqz v2, :cond_1e

    .line 6570
    const/16 v2, 0x1e

    move/from16 v19, v3

    .end local v3    # "beep":Z
    .restart local v19    # "beep":Z
    const-string v3, "debug.notify.vib_audio_delay"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 6571
    .local v2, "vibDelay":I
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move/from16 v23, v4

    .end local v4    # "ringerModeSilent":Z
    .local v23, "ringerModeSilent":Z
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v4, v0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v9    # "soundUri":Landroid/net/Uri;
    .end local v10    # "vibration":[J
    .local v24, "soundUri":Landroid/net/Uri;
    .local v25, "vibration":[J
    int-to-long v9, v2

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    .line 6568
    .end local v2    # "vibDelay":I
    .end local v19    # "beep":Z
    .end local v23    # "ringerModeSilent":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "vibration":[J
    .restart local v3    # "beep":Z
    .restart local v4    # "ringerModeSilent":Z
    .restart local v9    # "soundUri":Landroid/net/Uri;
    .restart local v10    # "vibration":[J
    :cond_1e
    move/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 6580
    .end local v3    # "beep":Z
    .end local v4    # "ringerModeSilent":Z
    .end local v9    # "soundUri":Landroid/net/Uri;
    .end local v10    # "vibration":[J
    .restart local v19    # "beep":Z
    .restart local v24    # "soundUri":Landroid/net/Uri;
    .restart local v25    # "vibration":[J
    :goto_10
    const/4 v3, 0x4

    goto :goto_12

    .line 6504
    .end local v21    # "isUnBlockable":Z
    .end local v22    # "hasAudibleAlert":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "vibration":[J
    .local v2, "isUnBlockable":Z
    .local v3, "hasAudibleAlert":Z
    .restart local v9    # "soundUri":Landroid/net/Uri;
    .restart local v10    # "vibration":[J
    :cond_1f
    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v2    # "isUnBlockable":Z
    .end local v3    # "hasAudibleAlert":Z
    .end local v9    # "soundUri":Landroid/net/Uri;
    .end local v10    # "vibration":[J
    .restart local v21    # "isUnBlockable":Z
    .restart local v22    # "hasAudibleAlert":Z
    .restart local v24    # "soundUri":Landroid/net/Uri;
    .restart local v25    # "vibration":[J
    goto :goto_11

    .line 6503
    .end local v21    # "isUnBlockable":Z
    .end local v22    # "hasAudibleAlert":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "vibration":[J
    .restart local v2    # "isUnBlockable":Z
    .restart local v3    # "hasAudibleAlert":Z
    .restart local v9    # "soundUri":Landroid/net/Uri;
    .restart local v10    # "vibration":[J
    :cond_20
    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 6580
    .end local v2    # "isUnBlockable":Z
    .end local v3    # "hasAudibleAlert":Z
    .end local v9    # "soundUri":Landroid/net/Uri;
    .end local v10    # "vibration":[J
    .restart local v21    # "isUnBlockable":Z
    .restart local v22    # "hasAudibleAlert":Z
    .restart local v24    # "soundUri":Landroid/net/Uri;
    .restart local v25    # "vibration":[J
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_23

    .line 6581
    const/4 v13, 0x0

    goto :goto_12

    .line 6463
    .end local v18    # "buzz":Z
    .end local v19    # "beep":Z
    .end local v20    # "blink":Z
    .end local v21    # "isUnBlockable":Z
    .end local v22    # "hasAudibleAlert":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "vibration":[J
    .local v2, "buzz":Z
    .local v3, "beep":Z
    .local v4, "blink":Z
    :cond_21
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x4

    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .end local v4    # "blink":Z
    .restart local v18    # "buzz":Z
    .restart local v19    # "beep":Z
    .restart local v20    # "blink":Z
    goto :goto_12

    .line 6461
    .end local v18    # "buzz":Z
    .end local v19    # "beep":Z
    .end local v20    # "blink":Z
    .restart local v2    # "buzz":Z
    .restart local v3    # "beep":Z
    .restart local v4    # "blink":Z
    :cond_22
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x4

    .line 6587
    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .end local v4    # "blink":Z
    .restart local v18    # "buzz":Z
    .restart local v19    # "beep":Z
    .restart local v20    # "blink":Z
    :cond_23
    :goto_12
    if-eqz v8, :cond_24

    if-nez v13, :cond_24

    .line 6588
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 6590
    :cond_24
    if-eqz v11, :cond_25

    if-nez v12, :cond_25

    .line 6591
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 6596
    :cond_25
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 6597
    .local v2, "wasShowLights":Z
    invoke-virtual {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 6598
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6599
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6600
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_26

    .line 6601
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    .line 6603
    :cond_26
    const/4 v4, 0x1

    .end local v20    # "blink":Z
    .restart local v4    # "blink":Z
    goto :goto_13

    .line 6604
    .end local v4    # "blink":Z
    .restart local v20    # "blink":Z
    :cond_27
    if-eqz v2, :cond_28

    .line 6605
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6607
    :cond_28
    move/from16 v4, v20

    .end local v20    # "blink":Z
    .restart local v4    # "blink":Z
    :goto_13
    if-nez v18, :cond_2a

    if-nez v19, :cond_2a

    if-eqz v4, :cond_29

    goto :goto_14

    :cond_29
    const/4 v9, 0x1

    goto/16 :goto_1c

    .line 6609
    :cond_2a
    :goto_14
    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v9

    const-string v10, "INTERRUPTIVENESS: "

    if-eqz v9, :cond_2c

    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 6610
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v9, :cond_2b

    .line 6611
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6612
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not interruptive: summary"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6611
    invoke-static {v15, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_15

    .line 6610
    :cond_2b
    const/4 v9, 0x1

    goto :goto_15

    .line 6615
    :cond_2c
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v9, :cond_2d

    .line 6616
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6617
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is interruptive: alerted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6616
    invoke-static {v15, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6619
    :cond_2d
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 6621
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v10

    const/16 v15, 0xc7

    .line 6622
    invoke-virtual {v10, v15}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 6623
    invoke-virtual {v10, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 6624
    if-eqz v18, :cond_2e

    move v15, v9

    goto :goto_16

    :cond_2e
    const/4 v15, 0x0

    :goto_16
    if-eqz v19, :cond_2f

    goto :goto_17

    :cond_2f
    const/16 v16, 0x0

    :goto_17
    or-int v15, v15, v16

    if-eqz v4, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x0

    :goto_18
    or-int/2addr v3, v15

    invoke-virtual {v10, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 6621
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 6625
    if-eqz v18, :cond_31

    move v3, v9

    goto :goto_19

    :cond_31
    const/4 v3, 0x0

    :goto_19
    if-eqz v19, :cond_32

    move v10, v9

    goto :goto_1a

    :cond_32
    const/4 v10, 0x0

    :goto_1a
    if-eqz v4, :cond_33

    move v15, v9

    goto :goto_1b

    :cond_33
    const/4 v15, 0x0

    :goto_1b
    invoke-static {v6, v3, v10, v15}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 6627
    :goto_1c
    if-nez v18, :cond_35

    if-eqz v19, :cond_34

    goto :goto_1d

    :cond_34
    const/4 v9, 0x0

    :cond_35
    :goto_1d
    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    .line 6628
    return-void
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .locals 5
    .param p1, "incomingPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "currPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "targetSdkVersion"    # I

    .line 2570
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2571
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return v0

    .line 2573
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2583
    .local v0, "effectsIntroducedInP":[I
    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2584
    .local v1, "newSuppressedVisualEffects":I
    const/16 v2, 0x1c

    if-ge p3, v2, :cond_3

    .line 2586
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2587
    aget v3, v0, v2

    not-int v3, v3

    and-int/2addr v1, v3

    .line 2588
    iget v3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v4, v0, v2

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 2586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2592
    .end local v2    # "i":I
    :cond_1
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    .line 2593
    or-int/lit8 v1, v1, 0x8

    .line 2594
    or-int/lit8 v1, v1, 0x4

    .line 2596
    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_8

    .line 2597
    or-int/lit8 v1, v1, 0x10

    goto :goto_2

    .line 2600
    :cond_3
    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 2603
    .local v2, "hasNewEffects":Z
    if-eqz v2, :cond_6

    .line 2605
    and-int/lit8 v1, v1, -0x4

    .line 2609
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 2610
    or-int/lit8 v1, v1, 0x2

    .line 2612
    :cond_5
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_8

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_8

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_8

    .line 2617
    or-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2621
    :cond_6
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_7

    .line 2622
    or-int/lit8 v1, v1, 0x8

    .line 2623
    or-int/lit8 v1, v1, 0x4

    .line 2624
    or-int/lit16 v1, v1, 0x80

    .line 2626
    :cond_7
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_8

    .line 2627
    or-int/lit8 v1, v1, 0x10

    .line 2632
    .end local v2    # "hasNewEffects":Z
    :cond_8
    :goto_2
    return v1

    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method protected canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5589
    const-string v0, "NotificationService"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 5590
    const-string v2, "Unable to create bubble -- no intent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    return v1

    .line 5595
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5598
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5600
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5601
    nop

    .line 5603
    if-eqz v4, :cond_1

    .line 5604
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    goto :goto_0

    .line 5605
    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 5606
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x1

    const/16 v7, 0xad

    if-nez v5, :cond_2

    .line 5607
    invoke-static {v7, p3, v6}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5609
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    return v1

    .line 5613
    :cond_2
    iget v8, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_3

    .line 5614
    invoke-static {v7, p3, v9}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    return v1

    .line 5620
    :cond_3
    iget v8, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v8, v9, :cond_4

    .line 5621
    const/4 v6, 0x3

    invoke-static {v7, p3, v6}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not documentLaunchMode=always for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    return v1

    .line 5627
    :cond_4
    iget v7, v5, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_5

    .line 5628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not embeddable for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5630
    return v1

    .line 5632
    :cond_5
    return v6

    .line 5600
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "aboveThreshold"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6633
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6634
    return v1

    .line 6637
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_1

    .line 6638
    return v1

    .line 6641
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6642
    return v1

    .line 6645
    :cond_2
    if-nez p2, :cond_3

    .line 6646
    return v1

    .line 6649
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 6650
    return v1

    .line 6653
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6654
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v2, :cond_5

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 6655
    return v1

    .line 6658
    :cond_5
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6659
    return v1

    .line 6662
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v2, :cond_7

    goto :goto_0

    .line 6666
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 6663
    :cond_8
    :goto_0
    return v1
.end method

.method canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "requiredPermission"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8412
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 8413
    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8415
    .local v0, "canUseManagedServices":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 8417
    .local v4, "whitelisted":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8418
    const/4 v0, 0x1

    .line 8415
    .end local v4    # "whitelisted":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8422
    :cond_3
    if-eqz p3, :cond_5

    .line 8424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p3, p1, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 8426
    const/4 v0, 0x0

    .line 8430
    :cond_4
    goto :goto_3

    .line 8428
    :catch_0
    move-exception v1

    .line 8429
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    const-string v3, "can\'t talk to pm"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8433
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    return v0
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7852
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$17;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7884
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "mustHaveFlags"    # I
    .param p6, "mustNotHaveFlags"    # I
    .param p7, "doit"    # Z
    .param p8, "userId"    # I
    .param p9, "reason"    # I
    .param p10, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7694
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p10

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7730
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 17
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "rank"    # I
    .param p12, "count"    # I
    .param p13, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7658
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object v15, v13

    move/from16 v13, p12

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7661
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7641
    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 7643
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 6
    .param p1, "index"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6979
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6983
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    if-eqz v0, :cond_0

    .line 6984
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string v2, "cancelToastLocked"

    invoke-static {v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 6989
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v1}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6995
    goto :goto_0

    .line 6990
    :catch_0
    move-exception v1

    .line 6991
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object died trying to hide notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6999
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 7006
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 7008
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 7009
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 7013
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 7015
    :cond_1
    return-void
.end method

.method clearNotifications()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1838
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1839
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1841
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1842
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 5070
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5071
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_0

    .line 5072
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 5076
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5078
    .local v0, "zenOnly":Z
    :goto_0
    if-nez v0, :cond_4

    .line 5079
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 5080
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5081
    .local v3, "N":I
    if-lez v3, :cond_3

    .line 5082
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 5084
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5083
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5086
    .end local v4    # "i":I
    :cond_2
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    :cond_3
    monitor-exit v2

    goto :goto_2

    .end local v3    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5091
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5092
    if-nez v0, :cond_10

    .line 5095
    :try_start_1
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_5

    .line 5096
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5098
    :cond_5
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_9

    .line 5099
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5100
    .restart local v3    # "N":I
    if-lez v3, :cond_8

    .line 5101
    const-string v4, "  Lights List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_7

    .line 5103
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_6

    .line 5104
    const-string v5, "  > "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 5106
    :cond_6
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5108
    :goto_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 5110
    .end local v4    # "i":I
    :cond_7
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5112
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUseAttentionLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHasLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationPulseEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSoundNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mVibrateNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableNotificationEffects="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaxPackageEnqueueRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5122
    .end local v3    # "N":I
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5123
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5124
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    nop

    .line 5125
    .local v1, "j":I
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 5127
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    .line 5128
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5129
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_b

    .line 5130
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "    ..."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 5133
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_b
    goto :goto_5

    .line 5135
    :cond_c
    :goto_6
    if-nez v0, :cond_10

    .line 5136
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5137
    .local v4, "N":I
    if-lez v4, :cond_f

    .line 5138
    const-string v5, "  Enqueued Notification List:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v4, :cond_e

    .line 5140
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 5141
    .local v6, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v7, :cond_d

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_8

    .line 5142
    :cond_d
    const-string v7, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 5139
    .end local v6    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 5144
    .end local v5    # "i":I
    :cond_e
    const-string v5, "  "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5147
    :cond_f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_9

    .line 5249
    .end local v1    # "j":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v4    # "N":I
    :catchall_1
    move-exception v1

    goto/16 :goto_11

    .line 5151
    :cond_10
    :goto_9
    if-nez v0, :cond_16

    .line 5152
    const-string v1, "\n  Ranking Config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5153
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5155
    const-string v1, "\n Notification Preferences:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5156
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5158
    const-string v1, "\n  Notification listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5159
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5160
    const-string v1, "    mListenerHints: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5161
    const-string v1, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5162
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5163
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_15

    .line 5164
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 5165
    .local v4, "hint":I
    if-lez v3, :cond_11

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5166
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5168
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 5169
    .local v5, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 5171
    .local v6, "listenerSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    if-ge v7, v6, :cond_14

    .line 5172
    if-lez v7, :cond_12

    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5173
    :cond_12
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 5174
    .local v8, "listener":Landroid/content/ComponentName;
    if-eqz v8, :cond_13

    .line 5175
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5171
    .end local v8    # "listener":Landroid/content/ComponentName;
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 5163
    .end local v4    # "hint":I
    .end local v5    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v6    # "listenerSize":I
    .end local v7    # "j":I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 5179
    .end local v3    # "i":I
    :cond_15
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 5180
    const-string v3, "\n  Notification assistant services:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5181
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5184
    .end local v1    # "N":I
    :cond_16
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_17

    if-eqz v0, :cond_18

    .line 5185
    :cond_17
    const-string v1, "\n  Zen Mode:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5186
    const-string v1, "    mInterruptionFilter="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5187
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5189
    const-string v1, "\n  Zen Log:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5190
    const-string v1, "    "

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5193
    :cond_18
    const-string v1, "\n  Condition providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5194
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5196
    const-string v1, "\n  Group summaries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5197
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5198
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5199
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5200
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_19

    .line 5201
    const-string v5, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5202
    const-string v5, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 5204
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19
    goto :goto_c

    .line 5206
    :cond_1a
    if-nez v0, :cond_1b

    .line 5207
    const-string v1, "\n  Usage Stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5208
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 5214
    :cond_1b
    const-string v1, "\n  App locker:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5215
    const-string v1, "    mAppLockerSwitch: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5216
    const-string v1, "    mLockAppList ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5217
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5218
    .restart local v1    # "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_1c

    .line 5219
    const-string v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5218
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5221
    .end local v3    # "i":I
    :cond_1c
    const-string v3, "    ]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5222
    const-string v3, "    mUnlockAppList ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5223
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 5224
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e
    if-ge v3, v1, :cond_1d

    .line 5225
    const-string v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 5227
    .end local v3    # "i":I
    :cond_1d
    const-string v3, "    ]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5232
    :try_start_2
    const-string v3, "\n  Driving mode:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    WhiteList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveAppWhiteList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5234
    const-string v3, "    KeepAliveList{"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5235
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mKeepAliveByNotificationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5236
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5237
    .local v6, "pkg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5238
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Landroid/app/INotificationManager;->getNavigationMode(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", keepAlive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5239
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Landroid/app/INotificationManager;->shouldKeepAlive(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDriveNavigationMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5240
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Landroid/app/INotificationManager;->isDriveNavigationMode(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5237
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5241
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "pkg":Ljava/lang/String;
    goto :goto_f

    .line 5242
    :cond_1e
    const-string v3, "    }"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    isDriveNavigationMode(pkg=null): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/app/INotificationManager;->isDriveNavigationMode(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5246
    goto :goto_10

    .line 5244
    :catch_0
    move-exception v3

    .line 5245
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5249
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_10
    monitor-exit v2

    .line 5250
    return-void

    .line 5249
    .end local v1    # "N":I
    :goto_11
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .locals 26
    .param p1, "oriPkg"    # Ljava/lang/String;
    .param p2, "oriOpPkg"    # Ljava/lang/String;
    .param p3, "oriCallingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "incomingUserId"    # I

    .line 5324
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v7, p6

    move-object/from16 v6, p7

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, " notification="

    const-string v2, "NotificationService"

    if-eqz v0, :cond_0

    .line 5325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueNotificationInternal: oriPkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",oriOpPkg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5324
    :cond_0
    move-object/from16 v5, p2

    .line 5328
    :goto_0
    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "appPackage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5329
    .local v4, "pkg":Ljava/lang/String;
    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5331
    .local v3, "opPkg":Ljava/lang/String;
    const/4 v15, 0x0

    if-eqz v4, :cond_3

    const-string v0, "com.coloros.mcs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.heytap.mcs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5332
    :cond_1
    const/4 v10, -0x1

    .line 5334
    .local v10, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v11, 0x10000000

    .line 5335
    invoke-interface {v0, v4, v11, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5338
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 5339
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v11

    .line 5345
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move-object v14, v3

    move v3, v10

    goto :goto_2

    .line 5343
    :catch_0
    move-exception v0

    .line 5344
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "get pkg uid exception"

    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 5341
    :catch_1
    move-exception v0

    .line 5342
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "Could not contact PackageManager"

    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5345
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 5353
    move-object v14, v3

    move v3, v10

    goto :goto_2

    .line 5347
    .end local v10    # "callingUid":I
    :cond_3
    move-object/from16 v0, p1

    .line 5348
    .end local v4    # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    move-object/from16 v3, p2

    .line 5349
    move/from16 v10, p3

    move-object v4, v0

    move-object v14, v3

    move v3, v10

    .line 5353
    .end local v0    # "pkg":Ljava/lang/String;
    .local v3, "callingUid":I
    .restart local v4    # "pkg":Ljava/lang/String;
    .local v14, "opPkg":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_15

    .line 5358
    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v21, "enqueueNotification"

    move/from16 v16, p4

    move/from16 v17, v3

    move/from16 v18, p8

    move-object/from16 v22, v4

    invoke-static/range {v16 .. v22}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5360
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v22

    .line 5364
    .local v22, "user":Landroid/os/UserHandle;
    invoke-virtual {v8, v14, v4, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v13

    .line 5366
    .local v13, "notificationUid":I
    invoke-direct {v8, v6}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 5370
    :try_start_1
    invoke-virtual {v8, v6, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5375
    nop

    .line 5377
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 5380
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 5381
    .local v0, "channelId":Ljava/lang/String;
    iget-boolean v10, v8, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v10, :cond_4

    new-instance v10, Landroid/app/Notification$TvExtender;

    invoke-direct {v10, v6}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v10}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 5382
    new-instance v10, Landroid/app/Notification$TvExtender;

    invoke-direct {v10, v6}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v10}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 5384
    :cond_4
    iget-object v10, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v10, v4, v13, v0, v15}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v12

    .line 5386
    .local v12, "channel":Landroid/app/NotificationChannel;
    if-nez v12, :cond_7

    .line 5387
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No Channel found for pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", channelId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", opPkg="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", callingUid="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", userId="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", incomingUserId="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p8

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v23, v1

    .end local v1    # "userId":I
    .local v23, "userId":I
    const-string v1, ", notificationUid="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5398
    .local v1, "noChannelStr":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, v4, v13}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    move/from16 v2, v16

    .line 5402
    .local v2, "appNotificationsOff":Z
    if-nez v2, :cond_6

    .line 5403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "noChannelStr":Ljava/lang/String;
    .local v18, "noChannelStr":Ljava/lang/String;
    const-string v1, "Developer warning for package \""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nFailed to post notification on channel \""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nSee log for more details"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 5402
    .end local v18    # "noChannelStr":Ljava/lang/String;
    .restart local v1    # "noChannelStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v1

    .line 5407
    .end local v1    # "noChannelStr":Ljava/lang/String;
    .restart local v18    # "noChannelStr":Ljava/lang/String;
    :goto_4
    return-void

    .line 5410
    .end local v2    # "appNotificationsOff":Z
    .end local v18    # "noChannelStr":Ljava/lang/String;
    .end local v23    # "userId":I
    .local v1, "userId":I
    :cond_7
    move-object/from16 v11, p5

    move/from16 v15, p8

    move/from16 v23, v1

    .end local v1    # "userId":I
    .restart local v23    # "userId":I
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    const/16 v19, 0x0

    .line 5412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object v10, v1

    const/4 v2, 0x1

    move-object v11, v4

    move-object v2, v12

    .end local v12    # "channel":Landroid/app/NotificationChannel;
    .local v2, "channel":Landroid/app/NotificationChannel;
    move-object v12, v14

    move/from16 v24, v13

    .end local v13    # "notificationUid":I
    .local v24, "notificationUid":I
    move/from16 v13, p6

    move-object/from16 v25, v14

    .end local v14    # "opPkg":Ljava/lang/String;
    .local v25, "opPkg":Ljava/lang/String;
    move-object/from16 v14, p5

    const/4 v5, 0x0

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p7

    move-object/from16 v18, v22

    invoke-direct/range {v10 .. v21}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 5413
    .local v10, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11, v10, v2}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    move-object v11, v1

    .line 5414
    .local v11, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/notification/PreferencesHelper;->getIsAppImportanceLocked(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 5416
    iget v1, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10

    .line 5417
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    .line 5418
    .local v1, "fgServiceShown":Z
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v12

    const/4 v13, 0x4

    and-int/2addr v12, v13

    const-string/jumbo v14, "miscellaneous"

    if-eqz v12, :cond_8

    if-nez v1, :cond_9

    .line 5420
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    const/4 v15, 0x1

    if-eq v12, v15, :cond_c

    .line 5421
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    if-nez v12, :cond_9

    goto :goto_5

    .line 5438
    :cond_9
    if-nez v1, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 5439
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 5440
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 5441
    invoke-virtual {v11, v2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    move/from16 v14, v24

    const/4 v12, 0x1

    goto :goto_8

    .line 5439
    :cond_a
    move/from16 v14, v24

    const/4 v12, 0x1

    goto :goto_8

    .line 5438
    :cond_b
    move/from16 v14, v24

    const/4 v12, 0x1

    goto :goto_8

    .line 5424
    :cond_c
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v15, 0x2

    if-nez v12, :cond_f

    .line 5425
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move/from16 v14, v24

    const/4 v12, 0x1

    goto :goto_7

    .line 5428
    :cond_d
    invoke-virtual {v2, v15}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 5429
    invoke-virtual {v11, v15}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 5430
    if-nez v1, :cond_e

    .line 5431
    invoke-virtual {v2, v13}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 5432
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_6

    .line 5430
    :cond_e
    const/4 v12, 0x1

    .line 5434
    :goto_6
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v14, v24

    .end local v24    # "notificationUid":I
    .local v14, "notificationUid":I
    invoke-virtual {v13, v4, v14, v2, v5}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 5436
    invoke-virtual {v11, v2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_8

    .line 5424
    .end local v14    # "notificationUid":I
    .restart local v24    # "notificationUid":I
    :cond_f
    move/from16 v14, v24

    const/4 v12, 0x1

    .line 5426
    .end local v24    # "notificationUid":I
    .restart local v14    # "notificationUid":I
    :goto_7
    invoke-virtual {v11, v15}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    goto :goto_8

    .line 5416
    .end local v1    # "fgServiceShown":Z
    .end local v14    # "notificationUid":I
    .restart local v24    # "notificationUid":I
    :cond_10
    move/from16 v14, v24

    const/4 v12, 0x1

    .line 5445
    .end local v24    # "notificationUid":I
    .restart local v14    # "notificationUid":I
    :goto_8
    iget-object v1, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5446
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    move v13, v12

    goto :goto_9

    :cond_11
    move v13, v5

    .line 5445
    :goto_9
    move/from16 v15, v23

    .end local v23    # "userId":I
    .local v15, "userId":I
    move-object/from16 v1, p0

    move v5, v12

    move-object v12, v2

    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .restart local v12    # "channel":Landroid/app/NotificationChannel;
    move v2, v15

    move/from16 v16, v3

    .end local v3    # "callingUid":I
    .local v16, "callingUid":I
    move v3, v14

    move-object v9, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .local v9, "pkg":Ljava/lang/String;
    move/from16 v4, p6

    move-object/from16 v17, v0

    move v0, v5

    .end local v0    # "channelId":Ljava/lang/String;
    .local v17, "channelId":Ljava/lang/String;
    move-object/from16 v5, p5

    move-object/from16 v18, v10

    move-object v10, v6

    .end local v10    # "n":Landroid/service/notification/StatusBarNotification;
    .local v18, "n":Landroid/service/notification/StatusBarNotification;
    move-object v6, v11

    move-object/from16 v19, v12

    move v12, v7

    .end local v12    # "channel":Landroid/app/NotificationChannel;
    .local v19, "channel":Landroid/app/NotificationChannel;
    move v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5447
    return-void

    .line 5453
    :cond_12
    invoke-direct {v8, v9, v12, v0}, Lcom/android/server/notification/NotificationManagerService;->setKeepAliveAppIfNeed(Ljava/lang/String;IZ)V

    .line 5458
    iget-object v0, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v0, :cond_14

    .line 5459
    iget-object v0, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 5460
    .local v0, "intentCount":I
    if-lez v0, :cond_14

    .line 5461
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 5462
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 5463
    .local v1, "am":Landroid/app/ActivityManagerInternal;
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 5464
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v2

    .line 5465
    .local v2, "duration":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v0, :cond_14

    .line 5466
    iget-object v5, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 5467
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_13

    .line 5468
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 5470
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    const/4 v13, 0x7

    invoke-virtual {v1, v6, v7, v13}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    .line 5465
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 5478
    .end local v0    # "intentCount":I
    .end local v1    # "am":Landroid/app/ActivityManagerInternal;
    .end local v2    # "duration":J
    .end local v4    # "i":I
    :cond_14
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v1, v8, v15, v11}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5479
    return-void

    .line 5372
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "userId":I
    .end local v16    # "callingUid":I
    .end local v17    # "channelId":Ljava/lang/String;
    .end local v18    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v19    # "channel":Landroid/app/NotificationChannel;
    .end local v25    # "opPkg":Ljava/lang/String;
    .local v1, "userId":I
    .restart local v3    # "callingUid":I
    .local v4, "pkg":Ljava/lang/String;
    .restart local v13    # "notificationUid":I
    .local v14, "opPkg":Ljava/lang/String;
    :catch_2
    move-exception v0

    move v15, v1

    move/from16 v16, v3

    move-object v9, v4

    move-object v10, v6

    move v12, v7

    move-object/from16 v25, v14

    move v14, v13

    move-object v1, v0

    .end local v1    # "userId":I
    .end local v3    # "callingUid":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v13    # "notificationUid":I
    .restart local v9    # "pkg":Ljava/lang/String;
    .local v14, "notificationUid":I
    .restart local v15    # "userId":I
    .restart local v16    # "callingUid":I
    .restart local v25    # "opPkg":Ljava/lang/String;
    move-object v0, v1

    .line 5373
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Cannot create a context for sending app"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5374
    return-void

    .line 5353
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v16    # "callingUid":I
    .end local v22    # "user":Landroid/os/UserHandle;
    .end local v25    # "opPkg":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .restart local v4    # "pkg":Ljava/lang/String;
    .local v14, "opPkg":Ljava/lang/String;
    :cond_15
    move/from16 v16, v3

    move-object v9, v4

    move-object v10, v6

    move v12, v7

    move-object/from16 v25, v14

    .line 5354
    .end local v3    # "callingUid":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v14    # "opPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v16    # "callingUid":I
    .restart local v25    # "opPkg":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 7977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7978
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7979
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 7980
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 7979
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7981
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8018
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    .line 8019
    return-object v1

    .line 8021
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 8023
    return-object v1

    .line 8025
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method finishTokenLocked(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "t"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 7018
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7023
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 7024
    return-void
.end method

.method protected fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 5
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5484
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 5486
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p3

    .line 5484
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5487
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 5489
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5491
    .local v1, "canColorize":I
    if-nez v1, :cond_1

    .line 5492
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p1, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 5494
    :cond_1
    iget v2, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 5497
    :goto_1
    iget-object v2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 5498
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5500
    .local v2, "fullscreenIntentPermission":I
    if-eqz v2, :cond_2

    .line 5501
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 5502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5506
    .end local v2    # "fullscreenIntentPermission":I
    :cond_2
    return-void
.end method

.method getApprovedAssistant(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9538
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 9539
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    return-object v1
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2552
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .locals 1

    .line 8383
    nop

    .line 8384
    const-string v0, "companiondevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8383
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "excludedId"    # I
    .param p4, "excludedTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5782
    const/4 v0, 0x0

    .line 5783
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5784
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5785
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5786
    .local v3, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5787
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 5788
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5789
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5790
    goto :goto_1

    .line 5792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 5784
    .end local v3    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5795
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5796
    .local v2, "M":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 5797
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5798
    .local v4, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5799
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 5800
    add-int/lit8 v0, v0, 0x1

    .line 5796
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5803
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1860
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method getNotificationRecordCount()I
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1819
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1821
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1823
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1824
    .local v3, "posted":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1825
    add-int/lit8 v1, v1, -0x1

    .line 1827
    :cond_0
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1828
    add-int/lit8 v1, v1, -0x1

    .line 1830
    .end local v3    # "posted":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    goto :goto_0

    .line 1832
    :cond_2
    monitor-exit v0

    return v1

    .line 1833
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleRankingSort()V
    .locals 20

    .line 7133
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v0, :cond_0

    return-void

    .line 7134
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7135
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7137
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7138
    .local v3, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 7139
    .local v4, "visibilities":[I
    new-array v5, v0, [Z

    .line 7140
    .local v5, "showBadges":[Z
    new-array v6, v0, [Z

    .line 7141
    .local v6, "allowBubbles":[Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7142
    .local v7, "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7143
    .local v8, "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7144
    .local v9, "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7145
    .local v10, "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7146
    .local v11, "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7147
    .local v12, "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7148
    .local v13, "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7149
    .local v14, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    new-array v15, v0, [I

    .line 7150
    .local v15, "importancesBefore":[I
    const/16 v16, 0x0

    move-object/from16 v17, v15

    move/from16 v15, v16

    .local v15, "i":I
    .local v17, "importancesBefore":[I
    :goto_0
    if-ge v15, v0, :cond_1

    .line 7151
    move/from16 v16, v0

    .end local v0    # "N":I
    .local v16, "N":I
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7152
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7153
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    aput v1, v4, v15

    .line 7154
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v1

    aput-boolean v1, v5, v15

    .line 7155
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v1

    aput-boolean v1, v6, v15

    .line 7156
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7157
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7158
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7159
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7160
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7161
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7162
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7163
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7164
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    aput v1, v17, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7165
    move-object/from16 v1, p0

    move-object/from16 v18, v14

    .end local v14    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .local v18, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    :try_start_2
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v14, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 7150
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v14, v18

    goto :goto_0

    .line 7189
    .end local v3    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    .end local v5    # "showBadges":[Z
    .end local v6    # "allowBubbles":[Z
    .end local v7    # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v8    # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v11    # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .end local v15    # "i":I
    .end local v16    # "N":I
    .end local v17    # "importancesBefore":[I
    .end local v18    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 7150
    .local v0, "N":I
    .restart local v3    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "visibilities":[I
    .restart local v5    # "showBadges":[Z
    .restart local v6    # "allowBubbles":[Z
    .restart local v7    # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .restart local v8    # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v10    # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .restart local v11    # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .restart local v14    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .restart local v15    # "i":I
    .restart local v17    # "importancesBefore":[I
    :cond_1
    move/from16 v16, v0

    move-object/from16 v18, v14

    .line 7167
    .end local v0    # "N":I
    .end local v14    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .end local v15    # "i":I
    .restart local v16    # "N":I
    .restart local v18    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move/from16 v14, v16

    .end local v16    # "N":I
    .local v14, "N":I
    if-ge v0, v14, :cond_4

    .line 7169
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 7170
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v3

    .end local v3    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    move/from16 v16, v14

    .end local v14    # "N":I
    .restart local v16    # "N":I
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget v3, v4, v0

    .line 7171
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    if-ne v3, v14, :cond_3

    aget-boolean v3, v5, v0

    .line 7172
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    if-ne v3, v14, :cond_3

    aget-boolean v3, v6, v0

    .line 7173
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v14

    if-ne v3, v14, :cond_3

    .line 7174
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7175
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7176
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7177
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7178
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7179
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7180
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 7179
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7181
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7182
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v14

    .line 7181
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7183
    move-object/from16 v3, v18

    .end local v18    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .local v3, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v3

    .end local v3    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .restart local v18    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v14, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget v3, v17, v0

    .line 7184
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    if-eq v3, v14, :cond_2

    goto :goto_2

    .line 7168
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v19

    goto/16 :goto_1

    .line 7185
    .restart local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    :goto_2
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 7186
    monitor-exit v2

    return-void

    .line 7168
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v16    # "N":I
    .end local v19    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "N":I
    :cond_4
    move-object/from16 v19, v3

    move/from16 v16, v14

    .line 7189
    .end local v0    # "i":I
    .end local v3    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    .end local v5    # "showBadges":[Z
    .end local v6    # "allowBubbles":[Z
    .end local v7    # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v8    # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v11    # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .end local v14    # "N":I
    .end local v17    # "importancesBefore":[I
    .end local v18    # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    monitor-exit v2

    .line 7190
    return-void

    .line 7189
    :catchall_1
    move-exception v0

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected handleSavePolicyFile()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8356
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_0

    .line 8357
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 8360
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 8361
    return v2

    .line 8363
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 8365
    .local v3, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 8366
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 8365
    invoke-interface {v1, v5, v6}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 8367
    .local v1, "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 8368
    const/4 v0, 0x1

    .line 8377
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8368
    return v0

    .line 8367
    .end local v1    # "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 8377
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 8374
    :catch_0
    move-exception v1

    .line 8375
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8377
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 8372
    :catch_1
    move-exception v1

    .line 8373
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "Cannot reach companion device service"

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8377
    nop

    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 8370
    :catch_2
    move-exception v0

    .line 8377
    :goto_1
    nop

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8378
    nop

    .line 8379
    return v2
.end method

.method protected hideNotificationsForPackages([Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8082
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8083
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8084
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8085
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8086
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 8087
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8088
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8089
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 8090
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8086
    .end local v5    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8094
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 8095
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 8096
    return-void

    .line 8095
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8071
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8072
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8073
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8074
    return v1

    .line 8072
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8077
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 7070
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 7071
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 7072
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7073
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 7074
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 7075
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 7076
    return v3

    .line 7073
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7079
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V
    .locals 23
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p3, "packageManagerClient"    # Landroid/content/pm/PackageManager;
    .param p4, "lightsManager"    # Lcom/android/server/lights/LightsManager;
    .param p5, "notificationListeners"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p6, "notificationAssistants"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p7, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p8, "companionManager"    # Landroid/companion/ICompanionDeviceManager;
    .param p9, "snoozeHelper"    # Lcom/android/server/notification/SnoozeHelper;
    .param p10, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p11, "policyFile"    # Landroid/util/AtomicFile;
    .param p12, "activityManager"    # Landroid/app/ActivityManager;
    .param p13, "groupHelper"    # Lcom/android/server/notification/GroupHelper;
    .param p14, "am"    # Landroid/app/IActivityManager;
    .param p15, "appUsageStats"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p16, "dpm"    # Landroid/app/admin/DevicePolicyManagerInternal;
    .param p17, "ugm"    # Landroid/app/IUriGrantsManager;
    .param p18, "ugmInternal"    # Lcom/android/server/uri/UriGrantsManagerInternal;
    .param p19, "appOps"    # Landroid/app/AppOpsManager;
    .param p20, "userManager"    # Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1941
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v0, "NotificationService"

    const-string v4, "Start init()"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1945
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "max_notification_enqueue_rate"

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1949
    nop

    .line 1950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "accessibility"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1951
    move-object/from16 v5, p14

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1952
    move-object/from16 v6, p17

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 1953
    move-object/from16 v7, p18

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1954
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1955
    move-object/from16 v9, p3

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1956
    move-object/from16 v10, p19

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v11, "vibrator"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1958
    move-object/from16 v11, p15

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v12, "alarm"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1960
    move-object/from16 v12, p8

    iput-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 1961
    move-object/from16 v13, p12

    iput-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1962
    nop

    .line 1963
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1962
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1964
    move-object/from16 v14, p16

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1965
    move-object/from16 v15, p20

    iput-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    .line 1967
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1968
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1971
    const v0, 0x1070069

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    .local v0, "extractorNames":[Ljava/lang/String;
    goto :goto_0

    .line 1972
    .end local v0    # "extractorNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1973
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v0, v5, [Ljava/lang/String;

    .line 1975
    .local v0, "extractorNames":[Ljava/lang/String;
    :goto_0
    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1976
    new-instance v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v5}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1977
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1978
    move-object/from16 v5, p7

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1979
    new-instance v6, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v6, v5, v7, v8}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1980
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v6, v1}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 2005
    new-instance v5, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2009
    new-instance v5, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v22}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 2015
    move-object/from16 v5, p9

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 2016
    move-object/from16 v6, p13

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 2019
    move-object/from16 v7, p5

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2022
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2025
    new-instance v9, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;

    invoke-direct {v9, v1}, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    .line 2027
    move-object/from16 v9, p11

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 2030
    move-object/from16 v16, v0

    .end local v0    # "extractorNames":[Ljava/lang/String;
    .local v16, "extractorNames":[Ljava/lang/String;
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2031
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_0

    .line 2032
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 2035
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 2036
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 2038
    const v5, 0x1070068

    const/16 v0, 0x11

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v4, v5, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x104018a

    .line 2043
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2042
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 2044
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2045
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 2046
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2047
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 2048
    const v0, 0x10500a4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 2050
    const v0, 0x11100e9

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 2051
    const v0, 0x111008f

    .line 2052
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 2060
    iput-boolean v5, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 2062
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 2063
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2065
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2066
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 2068
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 2070
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v3, 0x10e0092

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 2073
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2074
    const-string v3, "android.hardware.type.television"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    iput-boolean v5, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2076
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2077
    const-string v3, "android.hardware.type.automotive"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 2078
    const v0, 0x111007b

    .line 2079
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 2088
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x5020015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEM([Ljava/lang/String;)V

    .line 2091
    new-instance v0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    .line 2092
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    invoke-virtual {v0, v3}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->setFallbackVibrationPattern([J)V

    .line 2094
    new-instance v0, Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    .line 2097
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x107006b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 2101
    new-instance v0, Lcom/android/server/notification/OpNotificationInjector;

    invoke-direct {v0}, Lcom/android/server/notification/OpNotificationInjector;-><init>()V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mOpNotificationInjector:Lcom/android/server/notification/OpNotificationInjector;

    .line 2106
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mOpNotificationInjector:Lcom/android/server/notification/OpNotificationInjector;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/server/notification/OpNotificationInjector;->prepare(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 2108
    return-void
.end method

.method protected isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 5807
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5808
    const-string v0, "NotificationService"

    const-string v1, "Suppressing notification from package by user request."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5810
    const/4 v0, 0x1

    return v0

    .line 5812
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isCallerInstantApp(II)Z
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8201
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8202
    return v2

    .line 8205
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 8206
    const/4 p2, 0x0

    .line 8210
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 8211
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 8214
    aget-object v3, v1, v2

    .line 8215
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, p1, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8217
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 8218
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    .line 8221
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0

    .line 8219
    :cond_2
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    throw v4

    .line 8212
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "userId":I
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8222
    .end local v1    # "pkgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "userId":I
    :catch_0
    move-exception v1

    .line 8223
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isCallerSystemOrPhone()Z
    .locals 1

    .line 8139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingUidSystem()Z
    .locals 2

    .line 8128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 8129
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isUidSystemOrPhone(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 8133
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 8134
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 17
    .param p1, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6233
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "INTERRUPTIVENESS: "

    const-string v5, "NotificationService"

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6234
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_0

    .line 6235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6236
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: summary"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6235
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    :cond_0
    return v3

    .line 6241
    :cond_1
    const/4 v0, 0x1

    if-nez v1, :cond_3

    .line 6242
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_2

    .line 6243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6244
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: new notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6243
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6246
    :cond_2
    return v0

    .line 6249
    :cond_3
    nop

    .line 6257
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 6258
    .local v6, "oldN":Landroid/app/Notification;
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 6260
    .local v7, "newN":Landroid/app/Notification;
    iget-object v8, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_13

    iget-object v8, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v8, :cond_4

    goto/16 :goto_1

    .line 6270
    :cond_4
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_6

    .line 6271
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_5

    .line 6272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6273
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: foreground service"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6272
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    :cond_5
    return v3

    .line 6278
    :cond_6
    iget-object v8, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6279
    .local v8, "oldTitle":Ljava/lang/String;
    iget-object v10, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v10, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 6280
    .local v9, "newTitle":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-nez v10, :cond_8

    .line 6281
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_7

    .line 6282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6283
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: changed title"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6282
    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v3

    .line 6285
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    .line 6284
    const-string v14, "   old title: %s (%s@0x%08x)"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6286
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v9, v4, v3

    .line 6287
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v11

    .line 6286
    const-string v3, "   new title: %s (%s@0x%08x)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    :cond_7
    return v0

    .line 6292
    :cond_8
    iget-object v10, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.text"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 6293
    .local v10, "oldText":Ljava/lang/String;
    iget-object v14, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v14, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 6294
    .local v13, "newText":Ljava/lang/String;
    invoke-static {v10, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 6295
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_9

    .line 6296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6297
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is interruptive: changed text"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6296
    invoke-static {v5, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6298
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v10, v15, v3

    .line 6299
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 6298
    const-string v11, "   old text: %s (%s@0x%08x)"

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v13, v4, v3

    .line 6301
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x2

    aput-object v3, v4, v12

    .line 6300
    const-string v3, "   new text: %s (%s@0x%08x)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6303
    :cond_9
    return v0

    .line 6305
    :cond_a
    invoke-virtual {v6}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v11

    invoke-virtual {v7}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v12

    if-eq v11, v12, :cond_c

    .line 6306
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_b

    .line 6307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6308
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: completed progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6307
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6310
    :cond_b
    return v0

    .line 6313
    :cond_c
    invoke-static {v6, v7}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 6314
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_d

    .line 6315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6316
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: changed actions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6315
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6318
    :cond_d
    return v0

    .line 6322
    :cond_e
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 6323
    .local v11, "oldB":Landroid/app/Notification$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v7}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 6326
    .local v12, "newB":Landroid/app/Notification$Builder;
    invoke-static {v11, v12}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 6327
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_f

    .line 6328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6329
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: styles differ"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6328
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6331
    :cond_f
    return v0

    .line 6335
    :cond_10
    invoke-static {v11, v12}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 6336
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_11

    .line 6337
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: remoteviews differ"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6337
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6340
    :cond_11
    return v0

    .line 6344
    .end local v11    # "oldB":Landroid/app/Notification$Builder;
    .end local v12    # "newB":Landroid/app/Notification$Builder;
    :cond_12
    goto :goto_0

    .line 6342
    :catch_0
    move-exception v0

    .line 6343
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "error recovering builder"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6346
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v3

    .line 6261
    .end local v8    # "oldTitle":Ljava/lang/String;
    .end local v9    # "newTitle":Ljava/lang/String;
    .end local v10    # "oldText":Ljava/lang/String;
    .end local v13    # "newText":Ljava/lang/String;
    :cond_13
    :goto_1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_14

    .line 6262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6263
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: no extras"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6262
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    :cond_14
    return v3
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .locals 7
    .param p1, "pid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 7085
    const/4 v0, 0x0

    .line 7086
    .local v0, "toastCount":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 7087
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7088
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 7089
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 7090
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 7091
    add-int/lit8 v0, v0, 0x1

    .line 7088
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7095
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string/jumbo v6, "toast"

    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7098
    goto :goto_2

    .line 7096
    :catch_0
    move-exception v3

    .line 7099
    :goto_2
    return-void
.end method

.method public synthetic lambda$doChannelWarningToast$2$NotificationManagerService(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "toastText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5637
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 5638
    .local v0, "defaultWarningEnabled":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5640
    .local v1, "warningEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 5641
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 5643
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5645
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method

.method public synthetic lambda$handleSavePolicyFile$0$NotificationManagerService()V
    .locals 5

    .line 817
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 828
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    .line 829
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    goto :goto_0

    .line 830
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 834
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 836
    return-void

    .line 834
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 822
    :catch_1
    move-exception v1

    .line 823
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "NotificationService"

    const-string v3, "Failed to save policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    monitor-exit v0

    return-void

    .line 834
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public synthetic lambda$playVibration$3$NotificationManagerService(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 6796
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6798
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 6796
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 6799
    .local v0, "waitMs":I
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delaying vibration by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    :cond_0
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6802
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 6806
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6807
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6814
    const-string/jumbo v2, "notice_vibrate_intensity"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->tryVibrateSceneBySound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6815
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Notification (delayed)"

    .line 6816
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    .line 6815
    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_2

    .line 6820
    :cond_1
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No vibration for canceled notification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6822
    :cond_2
    :goto_2
    monitor-exit v1

    .line 6823
    return-void

    .line 6822
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$registerDeviceConfigChange$1$NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2244
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2245
    return-void

    .line 2247
    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 2248
    const-string/jumbo v1, "nas_default_service"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 2251
    :cond_1
    return-void
.end method

.method protected loadPolicyFile()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 792
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string/jumbo v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 794
    const/4 v1, 0x0

    .line 796
    .local v1, "infile":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 797
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    :try_start_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 806
    :catch_0
    move-exception v2

    .line 807
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    nop

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 804
    :catch_1
    move-exception v2

    .line 805
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 809
    nop

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 802
    :catch_2
    move-exception v2

    .line 803
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 809
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 798
    :catch_3
    move-exception v3

    .line 801
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->readDefaultApprovedServices(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 809
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 810
    :goto_0
    nop

    .line 811
    .end local v1    # "infile":Ljava/io/InputStream;
    monitor-exit v0

    .line 812
    return-void

    .line 809
    .restart local v1    # "infile":Ljava/io/InputStream;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    throw v2

    .line 811
    .end local v1    # "infile":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method

.method logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "notificationLocation"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1242
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_1

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 1245
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 1246
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x568

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1247
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x63f

    .line 1250
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1249
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x640

    .line 1253
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1251
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x65d

    .line 1256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x66f

    .line 1259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1257
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1260
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1262
    .end local v0    # "logMaker":Landroid/metrics/LogMaker;
    :cond_1
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2637
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2639
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2640
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 2638
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2641
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    .line 2643
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase, phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 2309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2313
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 2314
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2315
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 2316
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 2318
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    goto :goto_0

    .line 2319
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 2323
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 2324
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 2325
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 2326
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->registerDeviceConfigChange()V

    .line 2328
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v7, p0

    .line 2112
    new-instance v0, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v2, v15}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v16, v0

    .line 2128
    .local v16, "snoozeHelper":Lcom/android/server/notification/SnoozeHelper;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 2130
    .local v14, "systemDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    .line 2131
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 2132
    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object v12, v0

    .line 2133
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-object v13, v0

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v5, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 2135
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    move-object v1, v14

    .end local v14    # "systemDir":Ljava/io/File;
    .local v1, "systemDir":Ljava/io/File;
    move-object v14, v0

    .line 2136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v17, v0

    .line 2137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "notification-policy"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/ActivityManager;

    .line 2141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v20

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v21

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2142
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2143
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2144
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v24

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2145
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/app/AppOpsManager;

    .line 2147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/UserManager;

    .line 2130
    const/4 v0, 0x0

    move-object v3, v15

    move-object v15, v0

    invoke-virtual/range {v7 .. v27}, Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V

    .line 2150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v0

    .line 2151
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2152
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2153
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2154
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2155
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2156
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2157
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2158
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2159
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2160
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2163
    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    const-string v0, "action.appboot.notification_listener_update"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2167
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v11, v0

    .line 2170
    .local v11, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2171
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2172
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2173
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2175
    const-string/jumbo v0, "package"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v12, v0

    .line 2180
    .local v12, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2181
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2182
    const-string v0, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v0

    .line 2187
    .local v20, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2190
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2191
    .local v4, "timeoutFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "timeout"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.SETTING_RESTORED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 2195
    .local v5, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v3, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2197
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 2198
    .local v6, "localeChangedFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, v3, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2200
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-string/jumbo v9, "notification"

    invoke-virtual {v3, v9, v0, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2202
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v7, v3, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v3, v0, v7}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2206
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2207
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2208
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    .line 2209
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v0, v3}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 2231
    :try_start_0
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v7, 0x3e9

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v7, v8, v9}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    goto :goto_0

    .line 2233
    :catch_0
    move-exception v0

    .line 2237
    :goto_0
    return-void
.end method

.method protected playInCallNotification()V
    .locals 3

    .line 6915
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6916
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "in_call_notification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6918
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6938
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$14;->start()V

    .line 6940
    :cond_0
    return-void
.end method

.method protected readDefaultApprovedServices(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 672
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "defaultListenerAccess":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ":"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 678
    .local v7, "whitelisted":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v9, 0xc0000

    .line 679
    invoke-virtual {v8, v7, v9, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v8

    .line 682
    .local v8, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 684
    .local v10, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v11

    invoke-interface {v11, v10, p1, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    goto :goto_2

    .line 686
    :catch_0
    move-exception v11

    .line 687
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 689
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 676
    .end local v7    # "whitelisted":Ljava/lang/String;
    .end local v8    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040162

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, "defaultDndAccess":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 697
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_3
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    .line 699
    .local v6, "whitelisted":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v7

    invoke-interface {v7, v6, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    goto :goto_4

    .line 700
    :catch_1
    move-exception v7

    .line 701
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 697
    .end local v6    # "whitelisted":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 706
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 707
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;ZI)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 739
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 740
    const-string/jumbo v1, "notification-policy"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "migratedManagedServices":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 743
    .local v3, "ineligibleForManagedServices":Z
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 744
    .local v4, "outerDepth":I
    :cond_1
    :goto_1
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 745
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 746
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    goto :goto_2

    .line 747
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ranking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 748
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    .line 750
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 751
    if-eqz v3, :cond_4

    .line 752
    goto :goto_1

    .line 754
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 755
    const/4 v1, 0x1

    goto :goto_3

    .line 756
    :cond_5
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 757
    if-eqz v3, :cond_6

    .line 758
    goto :goto_1

    .line 760
    :cond_6
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 761
    const/4 v1, 0x1

    goto :goto_3

    .line 762
    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 763
    if-eqz v3, :cond_8

    .line 764
    goto :goto_1

    .line 766
    :cond_8
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/ConditionProviders;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 768
    const/4 v1, 0x1

    .line 770
    :cond_9
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "allow-secure-notifications-on-lockscreen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 771
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 772
    goto/16 :goto_1

    .line 774
    :cond_a
    const/4 v5, 0x0

    .line 775
    const-string/jumbo v6, "value"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/notification/NotificationManagerService;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    goto/16 :goto_1

    .line 780
    :cond_b
    if-nez v1, :cond_c

    .line 781
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 782
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 783
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 784
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 787
    :cond_c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 788
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4836
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4837
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_0

    .line 4838
    return-void

    .line 4840
    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4841
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4842
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 4843
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4845
    :cond_1
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2561
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2563
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    const/16 v3, 0xa

    .line 2562
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2566
    :cond_0
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 2650
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2651
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 2650
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2653
    return-void
.end method

.method resetAssistantUserSet(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9531
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 9532
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9533
    return-void
.end method

.method resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5651
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 5652
    const/4 p4, 0x0

    .line 5655
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5656
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5657
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5658
    :cond_1
    return p3

    .line 5661
    :cond_2
    const/4 v1, -0x1

    .line 5663
    .local v1, "targetUid":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 5666
    goto :goto_0

    .line 5664
    :catch_0
    move-exception v2

    .line 5668
    :goto_0
    if-eq v1, v0, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5669
    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5671
    :cond_3
    return v1

    .line 5674
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot post for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6414
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 6415
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 6418
    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 6419
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 6418
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 6420
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 6421
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 6415
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6423
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 6424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 6423
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 6426
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .line 7365
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7366
    return-void

    .line 7369
    :cond_0
    const/16 v0, 0x40

    .line 7370
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7371
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 7372
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 7373
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 7374
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 7375
    .local v1, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7376
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7379
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7380
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p1, "am"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1924
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1925
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioMananger"    # Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1792
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1793
    return-void
.end method

.method protected setDefaultAssistantForUser(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 711
    const/4 v2, 0x0

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 714
    .local v0, "validAssistants":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v1, "candidateStrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "nas_default_service"

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    .local v3, "candidateStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    goto :goto_0

    .line 725
    :cond_0
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 726
    .local v4, "candidate":Landroid/content/ComponentName;
    const-string v5, "NotificationService"

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 727
    const/4 v2, 0x1

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 728
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, "Set default NAS to be %s in %d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 731
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid default NAS config is found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v3    # "candidateStr":Ljava/lang/String;
    .end local v4    # "candidate":Landroid/content/ComponentName;
    goto :goto_0

    .line 734
    :cond_2
    return-void
.end method

.method setFallbackVibrationPattern([J)V
    .locals 0
    .param p1, "vibrationPattern"    # [J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1876
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1877
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1871
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1872
    return-void
.end method

.method setHints(I)V
    .locals 0
    .param p1, "hints"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1797
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1798
    return-void
.end method

.method setIsAutomotive(Z)V
    .locals 0
    .param p1, "isAutomotive"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1904
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 1905
    return-void
.end method

.method setIsTelevision(Z)V
    .locals 0
    .param p1, "isTelevision"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1914
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1915
    return-void
.end method

.method setLights(Lcom/android/server/lights/Light;)V
    .locals 1
    .param p1, "light"    # Lcom/android/server/lights/Light;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1807
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1808
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1810
    return-void
.end method

.method protected setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V
    .locals 9
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .param p2, "baseUserId"    # I
    .param p3, "granted"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4769
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 4770
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_4

    .line 4771
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4772
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 4773
    .local v3, "userId":I
    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 4774
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 4775
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v5

    .line 4774
    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4776
    .local v5, "allowedAssistant":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    .line 4777
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    goto :goto_0

    .line 4782
    .end local v5    # "allowedAssistant":Landroid/content/ComponentName;
    :cond_1
    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4783
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v8

    .line 4782
    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4784
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4786
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4789
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    .line 4792
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 4793
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    .line 4789
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4795
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4797
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    :cond_3
    goto :goto_0

    .line 4799
    :cond_4
    return-void
.end method

.method setNotificationEffectsEnabledForAutomotive(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1909
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1910
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1881
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1882
    return-void
.end method

.method setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .locals 0
    .param p1, "prefHelper"    # Lcom/android/server/notification/PreferencesHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1890
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method setRankingHandler(Lcom/android/server/notification/RankingHandler;)V
    .locals 0
    .param p1, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1894
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1895
    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .locals 0
    .param p1, "rankingHelper"    # Lcom/android/server/notification/RankingHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1886
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1887
    return-void
.end method

.method setScreenOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1814
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1815
    return-void
.end method

.method setSystemReady(Z)V
    .locals 0
    .param p1, "systemReady"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1866
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1867
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "us"    # Lcom/android/server/notification/NotificationUsageStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1919
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1920
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1802
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1803
    return-void
.end method

.method setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1899
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1900
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6672
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6673
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 6674
    return v2

    .line 6678
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 6679
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6680
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 6681
    return v2

    .line 6685
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6686
    return v2

    .line 6690
    :cond_2
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6691
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6692
    return v2

    .line 6697
    :cond_3
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6698
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Muting recently noisy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    return v2

    .line 6703
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method showNextToastLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6944
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6945
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v0, :cond_3

    .line 6946
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v3, "NotificationService"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    :cond_0
    nop

    .line 6951
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string/jumbo v4, "showNextToastLocked"

    invoke-static {v2, v4}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 6956
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v2, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 6957
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6958
    return-void

    .line 6959
    :catch_0
    move-exception v2

    .line 6960
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6963
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 6964
    .local v3, "index":I
    if-ltz v3, :cond_1

    .line 6965
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6967
    :cond_1
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 6968
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 6969
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    goto :goto_1

    .line 6971
    :cond_2
    const/4 v0, 0x0

    .line 6973
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "index":I
    :goto_1
    goto/16 :goto_0

    .line 6975
    :cond_3
    return-void
.end method

.method protected simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9564
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9565
    const-string v1, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9567
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9568
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9570
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9571
    return-void
.end method

.method protected simulatePackageSuspendBroadcast(ZLjava/lang/String;)V
    .locals 5
    .param p1, "suspend"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9544
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 9547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9548
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9551
    if-eqz p1, :cond_0

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_0

    .line 9552
    :cond_0
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    :goto_0
    nop

    .line 9553
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9554
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9556
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9557
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "snoozeCriterionId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7801
    if-nez p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 7802
    .local v0, "listenerName":Ljava/lang/String;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 7803
    :cond_2
    return-void

    .line 7814
    :cond_3
    const-string v1, "NotificationService"

    const/4 v2, 0x1

    if-eqz p5, :cond_6

    .line 7815
    iget-object v3, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7816
    .local v3, "listenerPkg":Ljava/lang/String;
    const-string v4, "com.google.android.apps.restore"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7817
    const-string/jumbo v4, "|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7818
    .local v4, "splitKey":[Ljava/lang/String;
    if-eqz v4, :cond_6

    array-length v5, v4

    if-le v5, v2, :cond_6

    aget-object v5, v4, v2

    if-eqz v5, :cond_6

    .line 7822
    aget-object v5, v4, v2

    const-string v6, "com.android.providers.downloads"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v4, v2

    .line 7823
    const-string v6, "com.android.vending"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v4, v2

    .line 7824
    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7825
    :cond_4
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip snooze from \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7826
    :cond_5
    return-void

    .line 7831
    .end local v3    # "listenerPkg":Ljava/lang/String;
    .end local v4    # "splitKey":[Ljava/lang/String;
    :cond_6
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v3, :cond_7

    .line 7833
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object p4, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const-string/jumbo v2, "snooze event(%s, %d, %s, %s)"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    :cond_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7838
    return-void
.end method

.method protected unhideNotificationsForPackages([Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8100
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8101
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8102
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8103
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8104
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 8105
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8106
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8107
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 8108
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8104
    .end local v5    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8114
    .end local v4    # "i":I
    :cond_1
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v4, :cond_3

    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unhideNotificationsForPackages list size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8117
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 8118
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 8119
    return-void

    .line 8118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7841
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 7842
    .local v0, "listenerName":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 7843
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string/jumbo v2, "unsnooze event(%s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7845
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;)V

    .line 7846
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 7847
    return-void
.end method

.method updateLightsLocked()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7935
    const/4 v0, 0x0

    .line 7936
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    const-string v1, "NotificationService"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7937
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7938
    .local v2, "owner":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7939
    if-nez v0, :cond_0

    .line 7940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED Notification does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7941
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7943
    .end local v2    # "owner":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 7946
    :cond_1
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 7950
    invoke-virtual {v3, v4}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->showLight(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7954
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v3

    .line 7955
    .local v3, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7959
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->isLightEnabledImpl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7960
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v4, :cond_3

    .line 7961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " show light #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 7962
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " channel #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7963
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sbn #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7964
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->ledARGB:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7961
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7968
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    iget v4, v3, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v3, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v3, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v1, v4, v2, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_2

    .line 7952
    .end local v3    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 7972
    :cond_5
    :goto_2
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .locals 16
    .param p1, "newRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7533
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 7534
    .local v10, "key":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v11, "NotificationService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": updating permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7536
    :cond_1
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    move-object v12, v1

    .line 7537
    .local v12, "newUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    move-object v13, v1

    .line 7540
    .local v13, "oldUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    .line 7541
    return-void

    .line 7545
    :cond_4
    const/4 v1, 0x0

    .line 7546
    .local v1, "permissionOwner":Landroid/os/IBinder;
    if-eqz v8, :cond_5

    if-nez v1, :cond_5

    .line 7547
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7549
    :cond_5
    if-eqz v9, :cond_6

    if-nez v1, :cond_6

    .line 7550
    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7554
    :cond_6
    if-eqz v12, :cond_8

    if-nez v1, :cond_8

    .line 7555
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": creating owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7556
    :cond_7
    iget-object v2, v7, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 7560
    :cond_8
    if-nez v12, :cond_a

    if-eqz v1, :cond_a

    .line 7561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7563
    .local v2, "ident":J
    :try_start_0
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": destroying owner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7564
    :cond_9
    iget-object v4, v7, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v5, -0x1

    .line 7565
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 7564
    invoke-interface {v4, v1, v0, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7566
    const/4 v0, 0x0

    .line 7568
    .end local v1    # "permissionOwner":Landroid/os/IBinder;
    .local v0, "permissionOwner":Landroid/os/IBinder;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7569
    goto :goto_3

    .line 7568
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .restart local v1    # "permissionOwner":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7573
    .end local v2    # "ident":J
    :cond_a
    move-object v0, v1

    .end local v1    # "permissionOwner":Landroid/os/IBinder;
    .restart local v0    # "permissionOwner":Landroid/os/IBinder;
    :goto_3
    if-eqz v12, :cond_e

    if-eqz v0, :cond_e

    .line 7574
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_4
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_e

    .line 7575
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/Uri;

    .line 7576
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_b

    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 7577
    :cond_b
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": granting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7578
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 7574
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 7585
    .end local v14    # "i":I
    :cond_e
    if-eqz v13, :cond_12

    if-eqz v0, :cond_12

    .line 7586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 7587
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 7588
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_f

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 7589
    :cond_f
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": revoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 7586
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7595
    .end local v1    # "i":I
    :cond_12
    if-eqz v8, :cond_13

    .line 7596
    iput-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7598
    :cond_13
    return-void
.end method
