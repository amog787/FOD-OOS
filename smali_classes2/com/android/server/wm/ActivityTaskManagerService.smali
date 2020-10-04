.class public Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerService$LocalService;,
        Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;,
        Lcom/android/server/wm/ActivityTaskManagerService$H;,
        Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;,
        Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;,
        Lcom/android/server/wm/ActivityTaskManagerService$HotPath;,
        Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;,
        Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
    }
.end annotation


# static fields
.field static final ACTIVITY_BG_START_GRACE_PERIOD_MS:J = 0x2710L

.field static final ANIMATE:Z = true

.field private static final APP_SWITCH_DELAY_TIME:J = 0x1388L

.field public static DEBUG_ONEPLUS:Z = false

.field public static final DUMP_ACTIVITIES_CMD:Ljava/lang/String; = "activities"

.field public static final DUMP_ACTIVITIES_SHORT_CMD:Ljava/lang/String; = "a"

.field public static final DUMP_CONTAINERS_CMD:Ljava/lang/String; = "containers"

.field public static final DUMP_LASTANR_CMD:Ljava/lang/String; = "lastanr"

.field public static final DUMP_LASTANR_TRACES_CMD:Ljava/lang/String; = "lastanr-traces"

.field public static final DUMP_RECENTS_CMD:Ljava/lang/String; = "recents"

.field public static final DUMP_RECENTS_SHORT_CMD:Ljava/lang/String; = "r"

.field public static final DUMP_STARTER_CMD:Ljava/lang/String; = "starter"

.field static final INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MS:I = 0xea60

.field public static final KEY_DISPATCHING_TIMEOUT_MS:I = 0x1388

.field private static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field private static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field private static final SERVICE_LAUNCH_IDLE_WHITELIST_DURATION_MS:I = 0x1388

.field private static final START_AS_CALLER_TOKEN_EXPIRED_TIMEOUT:J = 0x1b7f10L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT:J = 0x927c0L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT_IMPL:J = 0x92f90L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IMMERSIVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field final GL_ES_VERSION:I

.field private final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field private mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field final mAllowAppSwitchUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field private mAppSwitchesAllowedTime:J

.field private mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mCompanionAppUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field private mConfigurationSeq:I

.field mContext:Landroid/content/Context;

.field mController:Landroid/app/IActivityController;

.field mControllerIsAMonkey:Z

.field mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field private mDeviceOwnerUid:I

.field private mDidAppSwitch:Z

.field final mExpiredStartAsCallerTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mFactoryTest:I

.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

.field mForceResizableActivities:Z

.field private mFullscreenThumbnailScale:F

.field private mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field mHasHeavyWeightFeature:Z

.field mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsFingerprintEnabled:Z

.field mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mKeyguardShown:Z

.field mLastANRState:Ljava/lang/String;

.field mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastStopAppSwitchesTime:J

.field private final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field private mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field private final mPendingAssistExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field private final mPendingTempWhitelist:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field mPreviousProcessVisibleTime:J

.field final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field final mProcessNames:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field mProfileApp:Ljava/lang/String;

.field mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field mProfilerInfo:Landroid/app/ProfilerInfo;

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field final mScreenObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field private mShowDialogs:Z

.field mShuttingDown:Z

.field private mSleeping:Z

.field public mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field final mStartActivitySources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSupportedSystemLocales:[Ljava/lang/String;

.field mSupportsFreeformWindowManagement:Z

.field mSupportsMultiDisplay:Z

.field mSupportsMultiWindow:Z

.field mSupportsPictureInPicture:Z

.field mSupportsSplitScreenMultiWindow:Z

.field mSuppressResizeConfigChanges:Z

.field final mSystemThread:Landroid/app/ActivityThread;

.field private mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field private mTempConfig:Landroid/content/res/Configuration;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field mTopAction:Ljava/lang/String;

.field mTopComponent:Landroid/content/ComponentName;

.field mTopData:Ljava/lang/String;

.field mTopProcessState:I

.field private mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUiContext:Landroid/content/Context;

.field mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field private final mUpdateLock:Landroid/os/UpdateLock;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mViSessionId:I

.field mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVr2dDisplayId:I

.field mVrController:Lcom/android/server/wm/VrController;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 343
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 734
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 399
    new-instance v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    .line 426
    new-instance v1, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v1}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 427
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    .line 429
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 431
    new-instance v1, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 448
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 455
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 490
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 502
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 514
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 532
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 539
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 565
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 566
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 572
    const-string v2, "android.intent.action.MAIN"

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 576
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 577
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 578
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 590
    new-instance v1, Landroid/os/UpdateLock;

    const-string v2, "immersive"

    invoke-direct {v1, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 596
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 627
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 642
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 648
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 652
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 655
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 696
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 735
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 736
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 737
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 739
    new-instance v1, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {v1}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 740
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 741
    const-string v1, "ro.opengles.version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 750
    new-instance v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-direct {v0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    .line 752
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # I

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/content/res/Configuration;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/MirrorActiveUids;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/content/res/Configuration;
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 331
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityTaskManagerService;IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "x3"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Z

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/AppWarnings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method private applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5017
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to main display for VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5021
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStackId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5020
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V

    .line 5023
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5037
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 3858
    if-eqz p2, :cond_0

    .line 3859
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3861
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3862
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3864
    :cond_1
    return-void
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 5978
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 5979
    .local v0, "inm":Landroid/app/INotificationManager;
    if-nez v0, :cond_0

    .line 5980
    return-void

    .line 5983
    :cond_0
    :try_start_0
    const-string v1, "android"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5987
    :catch_0
    move-exception v1

    goto :goto_1

    .line 5985
    :catch_1
    move-exception v1

    .line 5986
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityTaskManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5988
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 5990
    :goto_1
    return-void
.end method

.method private checkAllowAppSwitchUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 2608
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 2609
    .local v0, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 2610
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2611
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2612
    return v2

    .line 2610
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2616
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 3730
    nop

    .line 3731
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3730
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .line 3755
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3747
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 3748
    return v0

    .line 3750
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focused app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 5274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5275
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "ACTIVITY "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5277
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5278
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5279
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 5280
    :cond_0
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5281
    :goto_0
    if-eqz p6, :cond_1

    .line 5282
    invoke-virtual {p4, p3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5284
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5285
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5288
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5290
    :try_start_1
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5302
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 5303
    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 5306
    :cond_2
    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5309
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5313
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5314
    goto :goto_2

    .line 5313
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p5    # "args":[Ljava/lang/String;
    .end local p6    # "dumpAll":Z
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5317
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p5    # "args":[Ljava/lang/String;
    .restart local p6    # "dumpAll":Z
    :catch_0
    move-exception v1

    .line 5318
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5315
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5316
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5321
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 5284
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 3736
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3737
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    :cond_0
    return-void
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 5345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5348
    return-void

    .line 5346
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .locals 23
    .param p1, "requestType"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p5, "receiverExtras"    # Landroid/os/Bundle;
    .param p6, "activityToken"    # Landroid/os/IBinder;
    .param p7, "focused"    # Z
    .param p8, "newSessionId"    # Z
    .param p9, "userHandle"    # I
    .param p10, "args"    # Landroid/os/Bundle;
    .param p11, "timeout"    # J
    .param p13, "flags"    # I

    .line 3793
    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v2, "enqueueAssistContext()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3797
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3798
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x0

    if-nez v0, :cond_0

    .line 3799
    const-string v1, "ActivityTaskManager"

    const-string v2, "getAssistContextExtras failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3802
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3803
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssistContextExtras failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3806
    :cond_1
    if-eqz p7, :cond_3

    .line 3807
    if-eqz v11, :cond_2

    .line 3808
    :try_start_2
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3809
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, v1, :cond_2

    .line 3810
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not current top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3829
    .end local v1    # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    move-object v15, v0

    goto :goto_0

    .line 3816
    :cond_3
    :try_start_3
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v0, v1

    .line 3817
    if-nez v0, :cond_4

    .line 3818
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3822
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3823
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3822
    :cond_5
    move-object v15, v0

    .line 3829
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 3830
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_6

    .line 3831
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3833
    :cond_6
    const-string v0, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    const-string v0, "android.intent.extra.ASSIST_UID"

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3836
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v16, v9

    .end local v9    # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    move-object v1, v0

    .line 3838
    .local v1, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3841
    if-eqz p8, :cond_7

    .line 3842
    iget v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3845
    :cond_7
    :try_start_6
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v17

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v2, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, p1

    move/from16 v21, v2

    move/from16 v22, p13

    invoke-interface/range {v17 .. v22}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3847
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3848
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide/from16 v2, p11

    :try_start_7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3852
    nop

    .line 3853
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3849
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v2, p11

    .line 3850
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_9
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3854
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .end local v15    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    move-wide/from16 v2, p11

    :goto_2
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "changes"    # I

    .line 6095
    const/4 v0, 0x1

    .line 6096
    .local v0, "kept":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 6098
    .local v1, "mainStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 6099
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 6103
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 6106
    :cond_0
    if-eqz p1, :cond_1

    .line 6107
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 6111
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6116
    :cond_1
    return v0
.end method

.method private ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/app/PictureInPictureParams;

    .line 4456
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_4

    .line 4461
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4462
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3

    .line 4467
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4472
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4474
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v3

    .line 4473
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(IF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4475
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 4477
    .local v1, "minAspectRatio":F
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 4479
    .local v2, "maxAspectRatio":F
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 4481
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4479
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4485
    .end local v1    # "minAspectRatio":F
    .end local v2    # "maxAspectRatio":F
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 4487
    return-object v0

    .line 4468
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Current activity does not support picture-in-picture."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4463
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Can\'t find activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4457
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expireStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "permissionToken"    # Landroid/os/IBinder;

    .line 5660
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5661
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5662
    return-void
.end method

.method private forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "permissionToken"    # Landroid/os/IBinder;

    .line 5665
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5666
    return-void
.end method

.method private getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2431
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2432
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 2433
    const/4 v1, 0x0

    return-object v1

    .line 2435
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method

.method static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5687
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5690
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 5688
    :cond_1
    :goto_0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/WindowProcessController;

    .line 5694
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    return-wide v0
.end method

.method private getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "reducedResolution"    # Z
    .param p3, "restoreFromDisk"    # Z

    .line 4765
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4766
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 4768
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v1, :cond_0

    .line 4769
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTaskSnapshot: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4772
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4774
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/TaskRecord;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0

    .line 4772
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4319
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4320
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4326
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 4327
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4321
    .end local v0    # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$3DTHgCAeEd5OOF7ACeXoCk8mmrQ(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->expireStartAsCallerTokenMsg(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$7ieG0s-7Zp4H2bLiWdOgB6MqhcI(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$U6g1UdnOPnEF9wX1OTm9nKVXY5k(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V

    return-void
.end method

.method public static synthetic lambda$w70cT1_hTWQQAYctmXaA0BeZuBc(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->cancelHeavyWeightProcessNotification(I)V

    return-void
.end method

.method public static synthetic lambda$x3j1aVkumtfulORwKd6dHysJyE0(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$yP9TbBmrgQ4lrgcxb-8oL1pBAs4(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method private logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V
    .locals 3
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 4437
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4439
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4438
    const-string v2, "tron_varz_picture_in_picture_actions_count"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4441
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4442
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x338

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4443
    .local v0, "lm":Landroid/metrics/LogMaker;
    const/16 v1, 0x339

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4444
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4446
    .end local v0    # "lm":Landroid/metrics/LogMaker;
    :cond_1
    return-void
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 4
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3977
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3978
    .local v0, "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    return-void

    .line 3979
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3983
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    .local v1, "token":J
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3989
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3990
    nop

    .line 3996
    .end local v1    # "token":J
    goto :goto_0

    .line 3989
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3993
    .end local v1    # "token":J
    .restart local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    :catch_0
    move-exception v1

    .line 3994
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3997
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .locals 4
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3868
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3869
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3870
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3871
    .local v1, "receiver":Landroid/app/IAssistDataReceiver;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3872
    if-eqz v1, :cond_0

    .line 3874
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3876
    .local v0, "sendBundle":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    const-string v3, "receiverExtras"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3878
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v2, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3880
    goto :goto_0

    .line 3879
    :catch_0
    move-exception v2

    .line 3882
    .end local v0    # "sendBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 3871
    .end local v1    # "receiver":Landroid/app/IAssistDataReceiver;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I
    .locals 6
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "deferResume"    # Z
    .param p3, "displayId"    # I

    .line 5617
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5618
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5619
    .local v0, "changes":I
    if-eqz v0, :cond_1

    .line 5620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override config changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5622
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/RootActivityContainer;->setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V

    .line 5624
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5625
    .local v1, "isDensityChange":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 5626
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 5630
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v4, 0x18

    .line 5632
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5630
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5633
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5636
    .end local v1    # "isDensityChange":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return v0
.end method

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .locals 11
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 5994
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_0

    .line 5995
    return-void

    .line 5998
    :cond_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    .line 5999
    .local v8, "inm":Landroid/app/INotificationManager;
    if-nez v8, :cond_1

    .line 6000
    return-void

    .line 6004
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 6005
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402e3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 6006
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 6005
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 6007
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10807ef

    .line 6010
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 6011
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 6012
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 6013
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 6014
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 6016
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10402e4

    .line 6018
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6017
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 6019
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 6022
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6024
    .local v6, "notification":Landroid/app/Notification;
    :try_start_1
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object v1, v8

    move v7, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6029
    goto :goto_0

    .line 6028
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6026
    :catch_1
    move-exception v1

    .line 6027
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Error showing notification for heavy-weight app"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6029
    nop

    .line 6032
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "text":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 6030
    :catch_2
    move-exception v1

    .line 6031
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to create context for heavy notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6034
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "relaunchReason"    # I

    .line 5074
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 5080
    const/4 v0, 0x0

    return-object v0

    .line 5078
    :cond_0
    const-string v0, "free_resize"

    return-object v0

    .line 5076
    :cond_1
    const-string v0, "window_resize"

    return-object v0
.end method

.method private sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V
    .locals 5
    .param p1, "l"    # Ljava/util/Locale;

    .line 5650
    const-string v0, "ActivityTaskManager"

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 5651
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    .line 5652
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storing locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for decryption UI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    const-string v3, "SystemLocale"

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5656
    .end local v1    # "service":Landroid/os/IBinder;
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_0

    .line 5654
    :catch_0
    move-exception v1

    .line 5655
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error storing locale for decryption UI"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5657
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 5644
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5645
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 5646
    return-void
.end method

.method private start()V
    .locals 2

    .line 1042
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method private startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "isSystemCaller"    # Z

    .line 3024
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLockTaskModeLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_0
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 3029
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3030
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 3037
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->shouldSkipLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3038
    return-void

    .line 3048
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3049
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3052
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 3054
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v1}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3057
    nop

    .line 3058
    return-void

    .line 3056
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3031
    .end local v1    # "callingUid":I
    .end local v2    # "ident":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid task, not in foreground"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3026
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_0
    return-void
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "targetUid"    # I

    .line 4000
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4002
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4004
    .local v0, "wasRunningVoice":Z
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 4005
    if-nez v0, :cond_2

    .line 4006
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4007
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 4010
    .end local v0    # "wasRunningVoice":Z
    :cond_2
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .locals 3

    .line 6071
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6072
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6073
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 6075
    :cond_0
    return-void
.end method

.method private startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 3314
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3315
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3316
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3320
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3323
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 3324
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1388

    const/4 v9, 0x0

    move v8, p2

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 3329
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    goto :goto_0

    .line 3330
    :catch_0
    move-exception v2

    .line 3331
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "VoiceInteractionService failed to start."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3333
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 3317
    :cond_1
    :goto_1
    const-string v2, "VoiceInteractionService intent does not resolve. Not starting."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    return-void
.end method

.method private stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "isSystemCaller"    # Z

    .line 3061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3062
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3064
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3065
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V

    .line 3066
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3069
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 3070
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_0

    .line 3071
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3074
    .end local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3075
    nop

    .line 3076
    return-void

    .line 3066
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local p2    # "isSystemCaller":Z
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3074
    .restart local v0    # "callingUid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p2    # "isSystemCaller":Z
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .locals 8
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "persistent"    # Z
    .param p5, "userId"    # I
    .param p6, "deferResume"    # Z

    .line 5393
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method private updateEventDispatchingLocked(Z)V
    .locals 2
    .param p1, "booted"    # Z

    .line 5640
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 5641
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 5721
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 5724
    .local v0, "scaleFactor":F
    monitor-enter p0

    .line 5725
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 5726
    monitor-exit p0

    return-void

    .line 5729
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    .line 5730
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5731
    .local v1, "configuration":Landroid/content/res/Configuration;
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5732
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5733
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    monitor-exit p0

    .line 5734
    return-void

    .line 5733
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I
    .locals 25
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "initLocale"    # Z
    .param p3, "persistent"    # Z
    .param p4, "userId"    # I
    .param p5, "deferResume"    # Z

    .line 5439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5440
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    .line 5444
    .local v3, "changes":I
    invoke-static {v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->clearCacheWhenOnConfigurationChange(I)V

    .line 5447
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 5452
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5453
    return v4

    .line 5456
    :cond_0
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v6, "ActivityTaskManager"

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating global configuration to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    :cond_2
    const/16 v5, 0xa9f

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5460
    const/16 v7, 0x42

    iget v8, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v9, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v10, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v11, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v12, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v13, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v14, v1, Landroid/content/res/Configuration;->mcc:I

    iget v15, v1, Landroid/content/res/Configuration;->mnc:I

    iget v5, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v16, v5

    iget v5, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v17, v5

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v19, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v20, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v5

    iget v5, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v22, v5

    iget v5, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v23, v5

    iget v5, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v24, v5

    invoke-static/range {v7 .. v24}, Landroid/util/StatsLog;->write(IIIFIIIIIIIIIIIIII)I

    .line 5480
    const/4 v5, 0x1

    if-nez p2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v7, :cond_5

    .line 5481
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 5482
    .local v7, "locales":Landroid/os/LocaleList;
    const/4 v8, 0x0

    .line 5483
    .local v8, "bestLocaleIndex":I
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v9

    if-le v9, v5, :cond_4

    .line 5484
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v9, :cond_3

    .line 5485
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 5487
    :cond_3
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5489
    :cond_4
    nop

    .line 5490
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    .line 5489
    const-string v10, "persist.sys.locale"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5491
    invoke-static {v7, v8}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5493
    sget-object v9, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;

    .line 5495
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    .line 5493
    invoke-static {v9, v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 5496
    .local v9, "m":Landroid/os/Message;
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5499
    .end local v7    # "locales":Landroid/os/LocaleList;
    .end local v8    # "bestLocaleIndex":I
    .end local v9    # "m":Landroid/os/Message;
    :cond_5
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v8

    iput v8, v7, Landroid/content/res/Configuration;->seq:I

    .line 5502
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5506
    new-array v7, v5, [I

    const/16 v8, 0xec

    aput v8, v7, v4

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5507
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {v7}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->setScreenSize()V

    .line 5511
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config changes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5513
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 5516
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 5518
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v7

    .line 5519
    .local v7, "ac":Lcom/android/server/AttributeCache;
    if-eqz v7, :cond_7

    .line 5520
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/server/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5527
    :cond_7
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 5531
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5532
    .local v8, "configCopy":Landroid/content/res/Configuration;
    if-eqz p3, :cond_8

    invoke-static {v3}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5533
    sget-object v9, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    .line 5535
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5533
    invoke-static {v9, v0, v10, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 5536
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5539
    .end local v9    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v9

    .line 5540
    .local v9, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_a

    .line 5541
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5542
    .local v5, "pid":I
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowProcessController;

    .line 5543
    .local v11, "app":Lcom/android/server/wm/WindowProcessController;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v12, :cond_9

    .line 5544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update process config of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to new config "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    :cond_9
    iget v12, v11, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v13, "update configuration"

    invoke-static {v12, v13}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 5553
    invoke-virtual {v11, v8}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5540
    .end local v5    # "pid":I
    .end local v11    # "app":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 5556
    .end local v10    # "i":I
    :cond_a
    sget-object v5, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 5556
    invoke-static {v5, v6, v10, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 5559
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5563
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v0, v6, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5566
    return v3
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "resumed"    # Lcom/android/server/wm/ActivityRecord;

    .line 6078
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_0

    .line 6079
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6080
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6079
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6082
    :cond_0
    if-eqz p1, :cond_1

    .line 6083
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6084
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6083
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6086
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6087
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 5707
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 5710
    .local v0, "inputMethodExists":Z
    :goto_1
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    .line 5711
    .local v3, "modeType":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 5715
    .local v4, "uiModeSupportsDialogs":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hide_error_dialogs"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v1

    .line 5717
    .local v5, "hideDialogsSet":Z
    :goto_3
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 5718
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "wakeFullness"    # I
    .param p3, "testPssMode"    # Z

    .line 5325
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5326
    .local v0, "sleepToken":J
    nop

    .line 5327
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result v2

    .line 5326
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5328
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5329
    .local v3, "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    const-wide v4, 0x20900000002L

    .line 5330
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5329
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5331
    .end local v3    # "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    goto :goto_0

    .line 5332
    :cond_0
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5333
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5335
    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5337
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5338
    return-void
.end method


# virtual methods
.method acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 5851
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5852
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5853
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    .line 5854
    .local v1, "token":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5855
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5856
    .end local v1    # "token":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final activityDestroyed(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1827
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVITY DESTROYED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1829
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1830
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 1831
    const-string v2, "activityDestroyed"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1833
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1834
    return-void

    .line 1833
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z

    .line 1729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1731
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 1732
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1733
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1734
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v4, :cond_0

    .line 1735
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    return-void

    .line 1737
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, v6, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1739
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1

    .line 1740
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move-object v2, v6

    .line 1742
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    .line 1743
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 1745
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1747
    .end local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    nop

    .line 1749
    return-void

    .line 1745
    .restart local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "config":Landroid/content/res/Configuration;
    .end local p3    # "stopProfiling":Z
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1747
    .end local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "config":Landroid/content/res/Configuration;
    .restart local p3    # "stopProfiling":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1773
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1774
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1775
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    .line 1776
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1778
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1780
    return-void

    .line 1778
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityRelaunched(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1839
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1840
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchedLocked(Landroid/os/IBinder;)V

    .line 1841
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1843
    return-void

    .line 1841
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityResumed(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1754
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1755
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;)V

    .line 1756
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppResumedFinished(Landroid/os/IBinder;)V

    .line 1757
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1759
    return-void

    .line 1757
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1850
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1851
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1852
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    .line 1853
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1855
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1858
    return-void

    .line 1855
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .line 1788
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1789
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1794
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 1795
    .local v2, "restartingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1797
    .local v3, "restartingUid":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1798
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1799
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3

    .line 1800
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1801
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1804
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v6, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v2, v6

    .line 1805
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v3, v6

    .line 1807
    :cond_2
    invoke-virtual {v5, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 1809
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1811
    if-eqz v2, :cond_4

    .line 1817
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 1818
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "restartActivityProcess"

    invoke-virtual {v4, v2, v3, v6}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 1820
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 1822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1823
    return-void

    .line 1809
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public final activityTopResumedStateLost()V
    .locals 5

    .line 1763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1764
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1765
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    .line 1766
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1767
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1768
    return-void

    .line 1766
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 18
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3338
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3339
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3342
    .local v11, "callingIdent":J
    :try_start_0
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3343
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3344
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_8

    .line 3348
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v14, v2

    .line 3349
    .local v14, "comp":Landroid/content/ComponentName;
    if-eqz v14, :cond_7

    .line 3353
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v2, v3, :cond_6

    .line 3354
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v2, v3, :cond_5

    .line 3359
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3360
    :try_start_3
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3362
    :cond_0
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 3363
    :try_start_5
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3365
    :cond_1
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 3366
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 3369
    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3372
    :cond_2
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    .line 3373
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3372
    invoke-interface {v2, v14, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v15, v2

    .line 3374
    .local v15, "ainfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v10, :cond_4

    .line 3380
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    move-object v8, v2

    .line 3381
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3382
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 3381
    move-object v2, v8

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v17, v0

    move-object v0, v8

    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3384
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_3

    .line 3386
    :try_start_9
    const-string v3, "addAppTask"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 3387
    const/4 v3, -0x1

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3396
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3387
    return v3

    .line 3389
    :cond_3
    :try_start_a
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v4, p3

    :try_start_b
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3393
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3396
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3393
    return v3

    .line 3375
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add task for another application: target uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calling uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callingUid":I
    .end local v11    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3354
    .end local v15    # "ainfo":Landroid/content/pm/ActivityInfo;
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "callingUid":I
    .restart local v11    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 3353
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .line 3355
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad thumbnail size: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3356
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", require "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callingUid":I
    .end local v11    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3350
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "callingUid":I
    .restart local v11    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must specify explicit component"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callingUid":I
    .end local v11    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3394
    .end local v14    # "comp":Landroid/content/ComponentName;
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "callingUid":I
    .restart local v11    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    :goto_1
    move-object/from16 v3, p1

    goto :goto_2

    .line 3345
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity does not exist; token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v3, p1

    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callingUid":I
    .end local v11    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3394
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "callingUid":I
    .restart local v11    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    :goto_2
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v10    # "callingUid":I
    .end local v11    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 3396
    .restart local v10    # "callingUid":I
    .restart local v11    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 3394
    :catchall_4
    move-exception v0

    goto :goto_2

    .line 3396
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 4931
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4934
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4936
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4937
    nop

    .line 4938
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4939
    return-void

    .line 4936
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/content/ComponentName;
    throw v3

    .line 4938
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activity":Landroid/content/ComponentName;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1917
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1918
    .local v0, "nextState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1929
    return-void
.end method

.method public cancelRecentsAnimation(Z)V
    .locals 9
    .param p1, "restoreHomeStackPosition"    # Z

    .line 2936
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelRecentsAnimation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 2938
    .local v0, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2940
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2942
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_0

    .line 2943
    const/4 v6, 0x2

    goto :goto_0

    .line 2944
    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancelRecentsAnimation/uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2942
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 2945
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2947
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2948
    nop

    .line 2949
    return-void

    .line 2945
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "restoreHomeStackPosition":Z
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2947
    .restart local v0    # "callingUid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "restoreHomeStackPosition":Z
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public cancelTaskWindowTransition(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 4733
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelTaskWindowTransition()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4737
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4738
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 4740
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_0

    .line 4741
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4747
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4742
    return-void

    .line 4744
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->cancelWindowTransition()V

    .line 4745
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4747
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4748
    nop

    .line 4749
    return-void

    .line 4745
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4747
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z
    .locals 5
    .param p1, "sourcePid"    # I
    .param p2, "sourceUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "name"    # Ljava/lang/String;

    .line 2575
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 2576
    return v1

    .line 2579
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    return v1

    .line 2583
    :cond_1
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2584
    .local v3, "perm":I
    if-nez v3, :cond_2

    .line 2585
    return v1

    .line 2587
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2588
    return v1

    .line 2593
    :cond_3
    if-eq p4, v2, :cond_5

    if-eq p4, p2, :cond_5

    .line 2594
    invoke-static {v0, p3, p4, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2595
    if-nez v3, :cond_4

    .line 2596
    return v1

    .line 2598
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2599
    return v1

    .line 2603
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const/4 v0, 0x0

    return v0
.end method

.method checkGetTasksPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3743
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 5966
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 5970
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5971
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5973
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5971
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5974
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5975
    return-void

    .line 5967
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearLaunchParamsForPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5103
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "clearLaunchParamsForPackages"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5107
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 5106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5109
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5110
    return-void

    .line 5109
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6124
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2028
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2029
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2030
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 2031
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    return v4

    .line 2033
    :cond_0
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result v6

    .line 2034
    .local v6, "translucentChanged":Z
    if-eqz v6, :cond_1

    .line 2035
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2037
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 2038
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2041
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2038
    return v6

    .line 2039
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "translucentChanged":Z
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2041
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2047
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 2048
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2050
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2051
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2052
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2053
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2053
    return v5

    .line 2055
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 2056
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v7, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2057
    .local v7, "index":I
    const/4 v8, 0x0

    if-lez v7, :cond_2

    .line 2058
    iget-object v9, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 2059
    .local v9, "under":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v8

    :goto_0
    iput-object v10, v9, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2061
    .end local v9    # "under":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result v9

    .line 2062
    .local v9, "translucentChanged":Z
    if-eqz v9, :cond_3

    .line 2063
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/server/wm/ActivityStack;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2065
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v10, v8, v5, v5}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2066
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1, v5}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 2067
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2070
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2067
    return v9

    .line 2068
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v7    # "index":I
    .end local v9    # "translucentChanged":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2070
    .restart local v0    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected createRecentTasks()Lcom/android/server/wm/RecentTasks;
    .locals 2

    .line 971
    new-instance v0, Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-object v0
.end method

.method protected createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;
    .locals 2

    .line 916
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 917
    .local v0, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->initialize()V

    .line 918
    return-object v0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 4717
    if-eqz p3, :cond_0

    .line 4718
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4721
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4723
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4724
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4725
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4728
    nop

    .line 4729
    return-void

    .line 4725
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local p3    # "message":Ljava/lang/CharSequence;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4727
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .restart local p3    # "message":Ljava/lang/CharSequence;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dismissPip(ZI)V
    .locals 7
    .param p1, "animate"    # Z
    .param p2, "animationDuration"    # I

    .line 4200
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissPip()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4203
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4204
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4205
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4206
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_0

    .line 4207
    const-string v4, "ActivityTaskManager"

    const-string v5, "dismissPip: pinned stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4222
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4208
    return-void

    .line 4210
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 4214
    if-eqz p1, :cond_1

    .line 4215
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, p2, v4}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    goto :goto_0

    .line 4218
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 4220
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4223
    nop

    .line 4224
    return-void

    .line 4211
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t support animated resize."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "animate":Z
    .end local p2    # "animationDuration":I
    throw v4

    .line 4220
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "animate":Z
    .restart local p2    # "animationDuration":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "animate":Z
    .end local p2    # "animationDuration":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4222
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "animate":Z
    .restart local p2    # "animationDuration":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dismissSplitScreenMode(Z)V
    .locals 8
    .param p1, "toTop"    # Z

    .line 4147
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissSplitScreenMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4151
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4152
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4153
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4154
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_0

    .line 4155
    const-string v4, "ActivityTaskManager"

    const-string v5, "dismissSplitScreenMode: primary split-screen stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4188
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4156
    return-void

    .line 4159
    :cond_0
    const/4 v4, 0x4

    if-eqz p1, :cond_1

    .line 4162
    :try_start_2
    const-string v5, "dismissSplitScreenMode"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4168
    .local v4, "otherStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4169
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dismissSplitScreenMode : resetAdjustedForIme for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v5, v4, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    goto :goto_0

    .line 4174
    .end local v4    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4178
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4180
    .restart local v4    # "otherStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_3

    .line 4181
    const-string v5, "dismissSplitScreenMode_other"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_1

    .line 4174
    .end local v4    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_0
    nop

    .line 4185
    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 4186
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4189
    nop

    .line 4190
    return-void

    .line 4186
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "toTop":Z
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4188
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "toTop":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .line 5173
    const-string v8, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 5175
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .param p8, "header"    # Ljava/lang/String;

    .line 5179
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5181
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result v0

    .line 5183
    .local v0, "printedAnything":Z
    move v1, v0

    .line 5185
    .local v1, "needSep":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5186
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5185
    const-string v3, "  ResumedActivity: "

    invoke-static {p2, v2, p7, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    .line 5188
    .local v2, "printed":Z
    if-eqz v2, :cond_0

    .line 5189
    const/4 v0, 0x1

    .line 5190
    const/4 v1, 0x0

    .line 5193
    :cond_0
    if-nez p7, :cond_2

    .line 5194
    if-eqz v1, :cond_1

    .line 5195
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5197
    :cond_1
    const/4 v0, 0x1

    .line 5198
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "  "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5201
    :cond_2
    if-nez v0, :cond_3

    .line 5202
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5204
    :cond_3
    return-void
.end method

.method protected dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZ)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpVisibleStacksOnly"    # Z
    .param p8, "dumpFocusedStackOnly"    # Z

    .line 5231
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5232
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    :try_start_1
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/RootActivityContainer;->getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v15, v0

    .line 5234
    .local v15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5236
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 5237
    return v1

    .line 5240
    :cond_0
    array-length v0, v10

    sub-int/2addr v0, v11

    new-array v7, v0, [Ljava/lang/String;

    .line 5241
    .local v7, "newArgs":[Ljava/lang/String;
    array-length v0, v10

    sub-int/2addr v0, v11

    invoke-static {v10, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5243
    const/4 v0, 0x0

    .line 5244
    .local v0, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .line 5245
    .local v1, "needSep":Z
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    move/from16 v22, v1

    move-object v1, v0

    move/from16 v0, v22

    .local v0, "needSep":Z
    .local v1, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_4

    .line 5246
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    .line 5247
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    .line 5248
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5250
    :cond_1
    const/16 v18, 0x1

    .line 5251
    .end local v0    # "needSep":Z
    .local v18, "needSep":Z
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5252
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5253
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eq v1, v0, :cond_3

    .line 5254
    move-object v1, v0

    .line 5255
    :try_start_3
    const-string v3, "TASK "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5256
    const-string v3, " id="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5257
    const-string v3, " userId="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5258
    if-eqz p6, :cond_2

    .line 5259
    const-string v3, "  "

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5262
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_2
    move-object/from16 v19, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_2

    .line 5253
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_3
    move-object/from16 v19, v1

    .line 5262
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v1    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v19, "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5263
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    const-string v2, "  "

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v20, v6

    .end local v6    # "i":I
    .local v20, "i":I
    move-object v6, v7

    move-object/from16 v21, v7

    .end local v7    # "newArgs":[Ljava/lang/String;
    .local v21, "newArgs":[Ljava/lang/String;
    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    .line 5245
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v6, v20, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v7, v21

    .end local v20    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 5262
    .end local v21    # "newArgs":[Ljava/lang/String;
    .restart local v7    # "newArgs":[Ljava/lang/String;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v1, v19

    .end local v6    # "i":I
    .end local v7    # "newArgs":[Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v21    # "newArgs":[Ljava/lang/String;
    goto :goto_2

    .end local v19    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v20    # "i":I
    .end local v21    # "newArgs":[Ljava/lang/String;
    .restart local v1    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "i":I
    .restart local v7    # "newArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "i":I
    .end local v7    # "newArgs":[Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v21    # "newArgs":[Ljava/lang/String;
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 5265
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "needSep":Z
    .end local v20    # "i":I
    .end local v21    # "newArgs":[Ljava/lang/String;
    .local v0, "needSep":Z
    .restart local v7    # "newArgs":[Ljava/lang/String;
    :cond_4
    return v16

    .line 5234
    .end local v0    # "needSep":Z
    .end local v1    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v7    # "newArgs":[Ljava/lang/String;
    .end local v15    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    :goto_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5207
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5208
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5209
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5210
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 5213
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5214
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5215
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5133
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5135
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5137
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    :goto_0
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5142
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5145
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5146
    const-string v1, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5147
    return-void

    .line 5150
    :cond_0
    const/4 v1, 0x0

    .line 5151
    .local v1, "latest":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 5152
    .local v4, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 5153
    :cond_1
    move-object v1, v4

    .line 5151
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5156
    :cond_3
    const-string v2, "File: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5159
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5161
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 5162
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5164
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5168
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 5159
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "latest":Ljava/io/File;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5164
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "latest":Ljava/io/File;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "latest":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "latest":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v2

    .line 5165
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5166
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5169
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method enableScreenAfterBoot(Z)V
    .locals 3
    .param p1, "booted"    # Z

    .line 5677
    nop

    .line 5678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5677
    const/16 v2, 0xbea

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5679
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 5681
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5682
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    .line 5683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5684
    return-void

    .line 5683
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enforceSystemHasVrFeature()V
    .locals 2

    .line 4538
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4542
    return-void

    .line 4540
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4334
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4335
    const-string v3, "enterPictureInPictureMode"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4339
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 4340
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4340
    return v5

    .line 4345
    :cond_0
    :try_start_2
    const-string v4, "enterPictureInPictureMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4347
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4347
    return v6

    .line 4350
    :cond_1
    :try_start_3
    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;

    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 4380
    .local v4, "enterPipRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4384
    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4392
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 4394
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4394
    return v5

    .line 4395
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "enterPipRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4397
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I

    .line 1622
    move-object/from16 v1, p0

    move/from16 v2, p4

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1623
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_1
    :goto_0
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1627
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v10, v0

    .line 1628
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x1

    if-nez v10, :cond_2

    .line 1629
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1632
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    move-object v11, v0

    .line 1633
    .local v11, "tr":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v12, v0

    .line 1634
    .local v12, "rootR":Lcom/android/server/wm/ActivityRecord;
    if-nez v12, :cond_3

    .line 1635
    const-string v0, "ActivityTaskManager"

    const-string v4, "Finishing task with all activities already finished"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 1640
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1645
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_5

    .line 1647
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v13, p1

    :try_start_3
    invoke-virtual {v0, v13, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v0

    .line 1648
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_6

    .line 1650
    const/4 v6, 0x1

    .line 1652
    .local v6, "resumeOK":Z
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v6, v0

    .line 1656
    goto :goto_1

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    :try_start_5
    iput-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1655
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1658
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v6, :cond_6

    .line 1659
    const-string v0, "ActivityTaskManager"

    const-string v3, "Not finishing activity because controller resumed"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1645
    .end local v5    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "resumeOK":Z
    :cond_5
    move-object/from16 v13, p1

    .line 1667
    :cond_6
    :try_start_6
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_7

    .line 1668
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 1671
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-wide v14, v5

    .line 1674
    .local v14, "origId":J
    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    move v0, v3

    .line 1676
    .local v0, "finishWithRootActivity":Z
    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    if-eqz v0, :cond_9

    if-ne v10, v12, :cond_9

    goto :goto_3

    .line 1691
    :cond_9
    :try_start_7
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const-string v7, "app-request"

    const/4 v8, 0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    .line 1693
    .local v3, "res":Z
    if-nez v3, :cond_c

    .line 1694
    const-string v4, "ActivityTaskManager"

    const-string v5, "Failed to finish by app-request"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1683
    .end local v3    # "res":Z
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v6, "finish-activity"

    invoke-virtual {v3, v5, v4, v0, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3

    .line 1685
    .restart local v3    # "res":Z
    if-nez v3, :cond_b

    .line 1686
    const-string v5, "ActivityTaskManager"

    const-string v6, "Removing task failed to finish activity"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_b
    iput v4, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1697
    :cond_c
    :goto_4
    nop

    .line 1699
    :try_start_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1697
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1699
    .end local v0    # "finishWithRootActivity":Z
    .end local v3    # "res":Z
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resultCode":I
    .end local p3    # "resultData":Landroid/content/Intent;
    .end local p4    # "finishTask":I
    throw v0

    .line 1701
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v12    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resultCode":I
    .restart local p3    # "resultData":Landroid/content/Intent;
    .restart local p4    # "finishTask":I
    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_5
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1706
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1709
    .local v1, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1711
    nop

    .line 1722
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1711
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1716
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 1717
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    .line 1718
    nop

    .line 1722
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1718
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1720
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1722
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1720
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1722
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 1724
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishRunningVoiceLocked()V
    .locals 1

    .line 4013
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 4014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 4015
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4016
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 4018
    :cond_0
    return-void
.end method

.method public final finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 2669
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2671
    .local v1, "origId":J
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2672
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    .line 2673
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/wm/ActivityStack;->finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 2675
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    .end local v1    # "origId":J
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2677
    return-void

    .line 2676
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 4
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3150
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3155
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3157
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3158
    nop

    .line 3159
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3161
    return-void

    .line 3157
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "session":Landroid/service/voice/IVoiceInteractionSession;
    throw v3

    .line 3159
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4035
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4036
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4037
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4038
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4040
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4041
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2114
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2115
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2116
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2117
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2119
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2120
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3121
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3122
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3123
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3124
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 3126
    .local v5, "activityOptions":Landroid/app/ActivityOptions;
    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3126
    return-object v4

    .line 3128
    .end local v5    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3128
    return-object v4

    .line 3129
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3131
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object v0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 2910
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getAllStackInfos()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2913
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2914
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getAllStackInfos()Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2917
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2914
    return-object v3

    .line 2915
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2917
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 6192
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6193
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6194
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6195
    return-object v0
.end method

.method getAppOpsService()Lcom/android/server/appop/AppOpsService;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-nez v0, :cond_0

    .line 950
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 951
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 953
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 4

    .line 3402
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3403
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 3137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3138
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3140
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3141
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3144
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3141
    return-object v4

    .line 3142
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callingPackage":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3144
    .restart local v0    # "callingUid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .locals 1

    .line 6151
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 14
    .param p1, "requestType"    # I

    .line 3703
    nop

    .line 3705
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3703
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    .line 3706
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    if-nez v0, :cond_0

    .line 3707
    const/4 v1, 0x0

    return-object v1

    .line 3709
    :cond_0
    monitor-enter v0

    .line 3710
    :goto_0
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 3712
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3714
    :goto_1
    goto :goto_0

    .line 3713
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3716
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3717
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3718
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3719
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3720
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3721
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3722
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object v1

    .line 3721
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3716
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2424
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2425
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2426
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2427
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2390
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2391
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2395
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x18

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2396
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    .line 2397
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallingPackage, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_1
    move-object v2, v3

    .line 2400
    .local v2, "resultPkg":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2401
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 2402
    .local v3, "callerPkg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_2

    .line 2403
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replace fast app third login package: callerPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", resultPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_2
    invoke-static {v2}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->shouldRunLoginBusiness(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2407
    invoke-static {v3}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2409
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_3

    .line 2410
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replaced resultPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    .end local v3    # "callerPkg":Ljava/lang/String;
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2418
    .end local v2    # "resultPkg":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 2419
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .line 5352
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5353
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5354
    .local v1, "ci":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5356
    return-object v1

    .line 5355
    .end local v1    # "ci":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserId()I
    .locals 1

    .line 5341
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6

    .line 1022
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1023
    .local v0, "config":Landroid/content/pm/ConfigurationInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1025
    .local v2, "globalConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1026
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1027
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1028
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 1030
    :cond_0
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1032
    :cond_1
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1034
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1036
    :cond_2
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1037
    .end local v2    # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1038
    return-object v0

    .line 1037
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getFilteredTasks(III)Ljava/util/List;
    .locals 10
    .param p1, "maxNum"    # I
    .param p2, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2653
    .local v7, "callingUid":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2655
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2658
    const-string v0, "getTasks"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v6

    .line 2660
    .local v6, "allowed":Z
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move v1, p1

    move-object v2, v8

    move v3, p2

    move v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootActivityContainer;->getRunningTasks(ILjava/util/List;IIIZ)V

    .line 2662
    .end local v6    # "allowed":Z
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2664
    return-object v8

    .line 2662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2128
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2130
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    .line 2131
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v5, v3, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    return-object v4

    .line 2133
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    return-object v4

    .line 2134
    .end local v3    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2136
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 4

    .line 1974
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1977
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 1978
    const/4 v2, -0x3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1980
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1981
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 5364
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .locals 2

    .line 999
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1000
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "pid"    # I

    .line 1007
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1011
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1012
    .local v1, "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1013
    .end local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1008
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .locals 3

    .line 6155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6156
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6157
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6158
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 6159
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6161
    :cond_1
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .locals 16
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "intents"    # [Landroid/content/Intent;
    .param p9, "resolvedTypes"    # [Ljava/lang/String;
    .param p10, "flags"    # I
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 6040
    move/from16 v12, p1

    const/4 v0, 0x0

    .line 6041
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 6042
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6043
    const/4 v1, 0x0

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 6044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not in any stack"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    return-object v1

    .line 6047
    :cond_0
    move-object/from16 v14, p5

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 6048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is finishing"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6049
    return-object v1

    .line 6047
    :cond_1
    move-object v15, v0

    goto :goto_0

    .line 6041
    :cond_2
    move-object/from16 v14, p5

    move-object v15, v0

    .line 6053
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 6056
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    const/high16 v1, 0x20000000

    and-int v1, p10, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6057
    .local v1, "noCreate":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 6058
    return-object v0

    .line 6060
    :cond_4
    if-ne v12, v13, :cond_6

    .line 6061
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v2, :cond_5

    .line 6062
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 6064
    :cond_5
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6066
    :cond_6
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .locals 3

    .line 4799
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4801
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4802
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_0

    .line 4803
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4805
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4806
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLastStopAppSwitchesTime()J
    .locals 2

    .line 4993
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2016
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2017
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2018
    if-nez v1, :cond_0

    .line 2019
    const/4 v0, 0x0

    return-object v0

    .line 2021
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    return-object v0

    .line 2017
    .end local v1    # "srec":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 2003
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2004
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2005
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2006
    if-nez v1, :cond_0

    .line 2007
    const/4 v0, -0x1

    return v0

    .line 2009
    :cond_0
    iget v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    return v0

    .line 2005
    .end local v1    # "srec":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .locals 2

    .line 3099
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3100
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3101
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4433
    const/4 v0, 0x3

    return v0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5058
    const-string v0, "getPackageAskScreenCompat"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5059
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5060
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 5061
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4046
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4047
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4048
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4049
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4051
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4052
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 6133
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 6137
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 6138
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5041
    const-string v0, "getPackageScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5042
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5043
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 5044
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPendingTempWhitelistTagForUidLocked(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 6270
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .locals 1

    .line 6144
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_0

    .line 6145
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 6147
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 6240
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 6241
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6242
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, p2, :cond_1

    .line 6243
    return-object v0

    .line 6245
    :cond_1
    return-object v1
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .locals 8
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 6220
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6221
    return-object v0

    .line 6224
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6225
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6226
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 6227
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 6228
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 6229
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 6230
    .local v6, "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v1, :cond_1

    .line 6231
    return-object v6

    .line 6228
    .end local v6    # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 6226
    .end local v4    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6236
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 6199
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 6202
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 6203
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 6204
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 6205
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6206
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6207
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6208
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6210
    goto :goto_1

    .line 6212
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    return-object v4

    .line 6206
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6216
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .locals 10
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2888
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v7, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2889
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v1, v0, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v8

    .line 2891
    .local v8, "allowed":Z
    nop

    .line 2892
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2893
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2891
    const-string v2, "android.permission.GET_DETAILED_TASKS"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 2898
    .local v4, "detailed":Z
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_1

    .line 2899
    invoke-static {p3}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLockerEnabled(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->mIsAppLockerEnabledForRecents:Z

    .line 2902
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2903
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    move v3, v8

    move v5, p3

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 2905
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1886
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1887
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1888
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 1889
    const/4 v2, -0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1891
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1892
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "preferredPackage"    # Ljava/lang/String;

    .line 6173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6174
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 6176
    .local v1, "useSystemProvidedLauncher":Z
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6182
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 6178
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6180
    .local v2, "secondaryHomeComponent":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6181
    .end local v2    # "secondaryHomeComponent":Ljava/lang/String;
    nop

    .line 6184
    :goto_2
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6185
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 6186
    const-string v2, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6188
    :cond_3
    return-object v0
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2923
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2926
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2927
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2930
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2927
    return-object v3

    .line 2928
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingMode":I
    .end local p2    # "activityType":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2930
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingMode":I
    .restart local p2    # "activityType":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskId"    # I

    .line 2305
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskBounds()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2307
    .local v0, "ident":J
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2309
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2310
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2312
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v4, :cond_0

    .line 2313
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskBounds: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2331
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2314
    return-object v2

    .line 2316
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2319
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2323
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2324
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2325
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    .line 2326
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2329
    .end local v4    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_3
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2332
    nop

    .line 2333
    return-object v2

    .line 2329
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2331
    .restart local v0    # "ident":J
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .locals 3
    .param p1, "id"    # I

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2339
    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskDescription()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2343
    .local v1, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_0

    .line 2344
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2346
    .end local v1    # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2347
    const/4 v0, 0x0

    return-object v0

    .line 2346
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3546
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3549
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3550
    .local v0, "passedIconFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3551
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3552
    .local v1, "legitIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3553
    const-string v2, "_activity_icon_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3557
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3554
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " passed for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 2638
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2639
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2640
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "reducedResolution"    # Z

    .line 4753
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "getTaskSnapshot()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4756
    .local v0, "ident":J
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4756
    return-object v2

    .line 4758
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 5085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getUidState(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 6249
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 4492
    const-string v0, "getUriPermissionOwnerForActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4493
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4494
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4495
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 4499
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4496
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity does not exist; token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    throw v2

    .line 4500
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    .line 942
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 943
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 945
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 961
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 963
    .local v0, "mode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 964
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 967
    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 957
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method increaseConfigurationSeqLocked()I
    .locals 2

    .line 911
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 912
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .locals 8
    .param p1, "intentFirewall"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intentController"    # Lcom/android/server/am/PendingIntentController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 878
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 879
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 880
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 881
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 882
    .local v0, "systemDir":Ljava/io/File;
    new-instance v7, Lcom/android/server/wm/AppWarnings;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 883
    new-instance v1, Lcom/android/server/wm/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 884
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 886
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 887
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 888
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 889
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 890
    new-instance v1, Lcom/android/server/wm/RootActivityContainer;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RootActivityContainer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 891
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 893
    new-instance v1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 895
    new-instance v1, Lcom/android/server/wm/LockTaskController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 896
    new-instance v1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 897
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 898
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 899
    new-instance v1, Lcom/android/server/wm/VrController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1, v2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 901
    return-void
.end method

.method public installSystemProviders()V
    .locals 1

    .line 787
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    .line 788
    return-void
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1588
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1589
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1593
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, -0x2710

    .line 1595
    invoke-static {v0, v0, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v10

    .line 1593
    move-object v5, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1597
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v4, p4}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v5

    .line 1599
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1600
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, p1, v1, v0, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1604
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    return v6

    .line 1602
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1604
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method isActivityStartsLoggingEnabled()Z
    .locals 1

    .line 5669
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAppLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 7834
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_0

    .line 7835
    invoke-static {p1, p2}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 7837
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .locals 4

    .line 3924
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3925
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3926
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3930
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3931
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_1

    .line 3932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3934
    :cond_1
    :try_start_1
    iget v2, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move v1, v2

    .line 3935
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v1, "userId":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3936
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3927
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3935
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isAssociatedCompanionApp(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 6333
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6334
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 6335
    const/4 v1, 0x0

    return v1

    .line 6337
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .locals 1

    .line 5673
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .locals 1

    .line 5943
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .locals 1

    .line 5935
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .locals 2

    .line 2631
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2632
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2633
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isDeviceOwner(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 6258
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGetTasksAllowed(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 3760
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3762
    return v1

    .line 3765
    :cond_0
    const-string v0, "android.permission.REAL_GET_TASKS"

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 3767
    .local v0, "allowed":Z
    if-nez v0, :cond_4

    .line 3768
    const-string v1, "android.permission.GET_TASKS"

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v1

    const-string v2, ": caller "

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_3

    .line 3775
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3776
    const/4 v0, 0x1

    .line 3777
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is using old GET_TASKS but privileged; allowing"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3781
    :cond_2
    goto :goto_1

    .line 3780
    :catch_0
    move-exception v1

    .line 3783
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not hold REAL_GET_TASKS; limiting output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_4
    return v0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1934
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1935
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1938
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1936
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 1939
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isInLockTaskMode()Z
    .locals 1

    .line 3094
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiWindowMode(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4293
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4294
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4295
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 4296
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4302
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4296
    return v4

    .line 4299
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4302
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4299
    return v4

    .line 4300
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4302
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isInPictureInPictureMode(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4310
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4311
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4314
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4311
    return v3

    .line 4312
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4314
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method isKeyguardLocked()Z
    .locals 1

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3966
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3967
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3968
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 3969
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3971
    :cond_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3972
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSameApp(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2558
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    .line 2559
    if-nez p2, :cond_0

    .line 2560
    const/4 v0, 0x0

    return v0

    .line 2562
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2564
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2562
    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2565
    .local v0, "uid":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2567
    .end local v0    # "uid":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2569
    :cond_1
    nop

    .line 2570
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isSleepingLocked()Z
    .locals 1

    .line 5743
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .locals 1

    .line 5739
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

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

.method public isTopActivityImmersive()Z
    .locals 3

    .line 1944
    const-string v0, "isTopActivityImmersive"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1947
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1948
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3165
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3166
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3167
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3168
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isUidForeground(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 6254
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAway(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 4068
    const-string v0, "keyguardGoingAway"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4071
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4072
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(I)V

    .line 4073
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4075
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4076
    nop

    .line 4077
    return-void

    .line 4073
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "flags":I
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4075
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "flags":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "nextState"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1919
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1920
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying new update lock state \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\' for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    if-eqz p1, :cond_1

    .line 1923
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_0

    .line 1925
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1928
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$applyUpdateVrModeLocked$5$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5024
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5025
    return-void

    .line 5027
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5028
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v1

    .line 5029
    .local v1, "disableNonVrUi":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 5030
    if-eqz v1, :cond_1

    .line 5033
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 5035
    .end local v1    # "disableNonVrUi":Z
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5036
    return-void

    .line 5035
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4351
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4357
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4358
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v1

    .line 4359
    .local v1, "aspectRatio":F
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 4361
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4362
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4363
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v5, "enterPictureInPictureMode"

    invoke-virtual {v4, p1, v3, v1, v5}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 4365
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4366
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4367
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4368
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 4370
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4375
    .end local v1    # "aspectRatio":F
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    .end local v3    # "sourceBounds":Landroid/graphics/Rect;
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_0

    .line 4377
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4373
    :catch_0
    move-exception v1

    .line 4374
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enterPictureInPictureMode for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4377
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4378
    return-void

    .line 4377
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3179
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3180
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3181
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3183
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 3187
    sget-boolean v2, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3188
    invoke-static {v1}, Lcom/android/server/wm/OpAppLockerInjector;->showHint(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    :cond_0
    goto :goto_0

    .line 3191
    :catch_0
    move-exception v2

    .line 3194
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3196
    return-void

    .line 3194
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$onScreenAwakeChanged$3$ActivityTaskManagerService(Z)V
    .locals 2
    .param p1, "isAwake"    # Z

    .line 3538
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3539
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3538
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3541
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public synthetic lambda$postFinishBooting$6$ActivityTaskManagerService(ZZ)V
    .locals 2
    .param p1, "finishBooting"    # Z
    .param p2, "enableScreen"    # Z

    .line 5948
    if-eqz p1, :cond_0

    .line 5949
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5951
    :cond_0
    if-eqz p2, :cond_1

    .line 5952
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5954
    :cond_1
    return-void
.end method

.method public synthetic lambda$scheduleAppGcsLocked$7$ActivityTaskManagerService()V
    .locals 1

    .line 6120
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method public synthetic lambda$setLockScreenShown$2$ActivityTaskManagerService(Z)V
    .locals 2
    .param p1, "keyguardShowing"    # Z

    .line 3530
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3531
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3530
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3533
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestType"    # I
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .line 3696
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "startTime"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .line 6275
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 2287
    const-string v0, "moveActivityTaskToBack"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2288
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2291
    .local v1, "origId":J
    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    :try_start_1
    invoke-static {p1, v4}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v4

    .line 2292
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 2293
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v5, :cond_1

    .line 2294
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveTaskToBackLocked(I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2297
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2294
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2297
    .end local v4    # "taskId":I
    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2298
    nop

    .line 2299
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2300
    return v3

    .line 2297
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "nonRoot":Z
    throw v3

    .line 2299
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "nonRoot":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveStackToDisplay(II)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .line 3607
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "moveStackToDisplay()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3612
    .local v1, "ident":J
    :try_start_1
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_0

    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveStackToDisplay: moving stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3616
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3617
    nop

    .line 3618
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3619
    return-void

    .line 3616
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "displayId":I
    throw v3

    .line 3618
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 8
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "bOptions"    # Landroid/os/Bundle;

    .line 2484
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToFront: moving taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2488
    nop

    .line 2489
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    .line 2488
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2491
    return-void

    .line 2490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V
    .locals 21
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p6, "fromRecents"    # Z

    .line 2497
    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 2498
    .local v18, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2499
    .local v12, "callingUid":I
    invoke-virtual {v7, v12, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v0

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_7

    .line 2505
    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "Task to front"

    move-object/from16 v1, p0

    move/from16 v2, v18

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2506
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 2507
    return-void

    .line 2509
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2510
    .local v1, "origId":J
    const/4 v0, 0x0

    .line 2511
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz p1, :cond_1

    .line 2512
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 2511
    :cond_1
    move-object v3, v0

    .line 2514
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "moveTaskToFront"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2516
    .local v5, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v0, -0x1

    const/4 v6, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v8, v5

    move v9, v12

    move/from16 v10, v18

    move-object v4, v11

    move-object/from16 v11, p2

    move/from16 v20, v12

    .end local v12    # "callingUid":I
    .local v20, "callingUid":I
    move v12, v0

    move v13, v6

    move v6, v14

    move-object v14, v3

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2519
    return-void

    .line 2523
    :cond_2
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2524
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_3

    .line 2525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find task for id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2549
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2527
    return-void

    .line 2529
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2530
    const-string v8, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2549
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    return-void

    .line 2534
    :cond_4
    move-object/from16 v14, p5

    if-eqz v14, :cond_5

    .line 2535
    :try_start_2
    iget-object v4, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object v11, v4

    goto :goto_1

    .line 2549
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2536
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_5
    const/4 v11, 0x0

    :goto_1
    nop

    .line 2537
    .local v11, "realOptions":Landroid/app/ActivityOptions;
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v12, "moveTaskToFront"

    const/4 v13, 0x0

    move-object v9, v0

    move/from16 v10, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2540
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2541
    .local v4, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_6

    .line 2545
    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v10, p6

    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v4, v12, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2549
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "realOptions":Landroid/app/ActivityOptions;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2541
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v4    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "realOptions":Landroid/app/ActivityOptions;
    :cond_6
    move/from16 v10, p6

    .line 2549
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "realOptions":Landroid/app/ActivityOptions;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2550
    nop

    .line 2551
    return-void

    .line 2549
    :catchall_2
    move-exception v0

    move-object/from16 v14, p5

    :goto_3
    move/from16 v10, p6

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2500
    .end local v1    # "origId":J
    .end local v3    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "starter":Lcom/android/server/wm/ActivityStarter;
    .end local v20    # "callingUid":I
    .restart local v12    # "callingUid":I
    :cond_7
    move-object v4, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: moveTaskToFrontLocked() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2502
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public moveTaskToStack(IIZ)V
    .locals 12
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .line 2692
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTaskToStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2696
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2697
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_0

    .line 2698
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2721
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2699
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2702
    :cond_0
    :try_start_3
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_1

    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: moving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 2706
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_4

    .line 2710
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2714
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2715
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2718
    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "moveTaskToStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2721
    nop

    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2722
    nop

    .line 2723
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2724
    return-void

    .line 2711
    .restart local v1    # "ident":J
    .restart local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: Attempt to move task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to stack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "toTop":Z
    throw v4

    .line 2707
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "toTop":Z
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: No stack for stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "toTop":Z
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2721
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "toTop":Z
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "toTop":Z
    throw v3

    .line 2723
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "toTop":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTasksToFullscreenStack(IZ)V
    .locals 6
    .param p1, "fromStackId"    # I
    .param p2, "onTop"    # Z

    .line 4242
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTasksToFullscreenStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4247
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4248
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_1

    .line 4249
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4253
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_0

    .line 4250
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You can\'t move tasks from non-standard stacks."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "fromStackId":I
    .end local p2    # "onTop":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4256
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "fromStackId":I
    .restart local p2    # "onTop":Z
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4257
    nop

    .line 4258
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4259
    return-void

    .line 4256
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "fromStackId":I
    .end local p2    # "onTop":Z
    throw v3

    .line 4258
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "fromStackId":I
    .restart local p2    # "onTop":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 4272
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTopActivityToPinnedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4275
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_0

    .line 4280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4282
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->moveTopStackActivityToPinnedStack(I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4284
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 4284
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "bounds":Landroid/graphics/Rect;
    throw v3

    .line 4276
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "moveTopActivityToPinnedStack:Device doesn\'t support picture-in-picture mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "bounds":Landroid/graphics/Rect;
    throw v1

    .line 4286
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 2256
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2257
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2258
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2259
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2262
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2263
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2076
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityDrawn: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2078
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2079
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 2080
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2082
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2085
    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ATMS: notifyActivityDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_LAUNCH_END"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    .line 2097
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    .line 2099
    return-void

    .line 2082
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3178
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3197
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3173
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 3174
    return-void
.end method

.method public notifyPinnedStackAnimationEnded()V
    .locals 1

    .line 4626
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationEnded()V

    .line 4627
    return-void
.end method

.method public notifyPinnedStackAnimationStarted()V
    .locals 1

    .line 4620
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationStarted()V

    .line 4621
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "flush"    # Z

    .line 5090
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5091
    return-void
.end method

.method public offsetPinnedStackBounds(ILandroid/graphics/Rect;III)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "compareBounds"    # Landroid/graphics/Rect;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "animationDuration"    # I

    .line 2765
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "offsetPinnedStackBounds()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2769
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2770
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 2771
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2771
    return-void

    .line 2773
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2774
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_1

    .line 2775
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetPinnedStackBounds: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2776
    return-void

    .line 2778
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 2782
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2783
    .local v4, "destBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 2784
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 2788
    :cond_2
    invoke-virtual {v4, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 2789
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, p5, v6}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2791
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "destBounds":Landroid/graphics/Rect;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2793
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2794
    nop

    .line 2795
    return-void

    .line 2785
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "destBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    :try_start_5
    const-string v5, "ActivityTaskManager"

    const-string v6, "The current stack bounds does not matched! It may be obsolete."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2786
    return-void

    .line 2779
    .end local v4    # "destBounds":Landroid/graphics/Rect;
    :cond_4
    :try_start_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t support animated resize."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "compareBounds":Landroid/graphics/Rect;
    .end local p3    # "xOffset":I
    .end local p4    # "yOffset":I
    .end local p5    # "animationDuration":I
    throw v4

    .line 2791
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "compareBounds":Landroid/graphics/Rect;
    .restart local p3    # "xOffset":I
    .restart local p4    # "yOffset":I
    .restart local p5    # "animationDuration":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "compareBounds":Landroid/graphics/Rect;
    .end local p3    # "xOffset":I
    .end local p4    # "yOffset":I
    .end local p5    # "animationDuration":I
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2793
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "compareBounds":Landroid/graphics/Rect;
    .restart local p3    # "xOffset":I
    .restart local p4    # "yOffset":I
    .restart local p5    # "animationDuration":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onActivityManagerInternalAdded()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 905
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 906
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 907
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IRequestFinishCallback;

    .line 2454
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2455
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2456
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2459
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2460
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2465
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2466
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 2467
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2468
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_0

    .line 2470
    :cond_1
    :try_start_2
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2473
    goto :goto_0

    .line 2471
    :catch_0
    move-exception v3

    .line 2472
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "ActivityTaskManager"

    const-string v5, "Failed to invoke request finish callback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2475
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2476
    return-void

    .line 2475
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitPowerManagement()V
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->initPowerManagement()V

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 780
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 781
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 782
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 783
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 784
    return-void

    .line 783
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onScreenAwakeChanged(Z)V
    .locals 2
    .param p1, "isAwake"    # Z

    .line 3537
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3542
    return-void
.end method

.method onStartActivitySetDidAppSwitch()V
    .locals 2

    .line 4997
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_0

    .line 5003
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_0

    .line 5005
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 5007
    :goto_0
    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 756
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 758
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 759
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 761
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->onSystemReady()V

    .line 762
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_0

    .line 767
    invoke-static {p0}, Lcom/android/server/wm/OpAppLockerInjector;->initOpAppLocker(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 772
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 774
    return-void

    .line 762
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1955
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1956
    .local v1, "self":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 1957
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1960
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1962
    .local v2, "origId":J
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1964
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, p4, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1968
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1969
    .end local v1    # "self":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1970
    return-void

    .line 1969
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionTaskInStack(III)V
    .locals 12
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "position"    # I

    .line 4086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "positionTaskInStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4090
    .local v1, "ident":J
    :try_start_1
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_0

    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positionTaskInStack: positioning task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 4093
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_4

    .line 4098
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 4100
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_3

    .line 4104
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4111
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-ne v4, v11, :cond_1

    .line 4113
    invoke-virtual {v11, v3, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(Lcom/android/server/wm/TaskRecord;I)V

    goto :goto_0

    .line 4116
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskInStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4120
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4121
    nop

    .line 4122
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4123
    return-void

    .line 4105
    .restart local v1    # "ident":J
    .restart local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: Attempt to change the position of task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in/to non-standard stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "position":I
    throw v4

    .line 4101
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "position":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: no stack for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "position":I
    throw v4

    .line 4094
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "position":I
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: no task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "position":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4120
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "position":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "position":I
    throw v3

    .line 4122
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "position":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postFinishBooting(ZZ)V
    .locals 2
    .param p1, "finishBooting"    # Z
    .param p2, "enableScreen"    # Z

    .line 5947
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$oP6xxIfnD4kb4JN7aSJU073ULR4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$oP6xxIfnD4kb4JN7aSJU073ULR4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5955
    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 4893
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/RemoteAnimationAdapter;->setCallingPid(I)V

    .line 4896
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4899
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4902
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4903
    nop

    .line 4904
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4905
    return-void

    .line 4902
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    throw v3

    .line 4904
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 4873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/RemoteAnimationDefinition;->setCallingPid(I)V

    .line 4876
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4877
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4878
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4879
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4881
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4883
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4885
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4886
    nop

    .line 4887
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4888
    return-void

    .line 4885
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4887
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 4910
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4912
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/RemoteAnimationDefinition;->setCallingPid(I)V

    .line 4913
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4914
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 4915
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_0

    .line 4916
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find display with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4919
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4921
    .local v2, "origId":J
    :try_start_2
    iget-object v4, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4923
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4924
    nop

    .line 4925
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4926
    return-void

    .line 4923
    .restart local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4925
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    .restart local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 3664
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "registerTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3667
    return-void
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3478
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3481
    .local v1, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3482
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 3483
    const/4 v4, 0x0

    .line 3487
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3483
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3485
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    const-string v5, "app-req"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityStack;->safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3487
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3485
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3487
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 3489
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 6
    .param p1, "appInt"    # Landroid/app/IApplicationThread;

    .line 3494
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3497
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 3498
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v5, "low-mem"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/RootActivityContainer;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3500
    .end local v3    # "app":Lcom/android/server/wm/WindowProcessController;
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3501
    nop

    .line 3502
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3503
    return-void

    .line 3500
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "appInt":Landroid/app/IApplicationThread;
    throw v3

    .line 3502
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "appInt":Landroid/app/IApplicationThread;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeAllVisibleRecentTasks()V
    .locals 5

    .line 2230
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeAllVisibleRecentTasks()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2234
    .local v1, "ident":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2236
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    nop

    .line 2238
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2239
    return-void

    .line 2236
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2238
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStack(I)V
    .locals 7
    .param p1, "stackId"    # I

    .line 3585
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3589
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3590
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_0

    .line 3591
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeStack: No stack with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3600
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3592
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3594
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3598
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3600
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3601
    nop

    .line 3602
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3603
    return-void

    .line 3595
    .restart local v1    # "ident":J
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Removing non-standard stack is not allowed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3600
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    throw v3

    .line 3602
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStacksInWindowingModes([I)V
    .locals 4
    .param p1, "windowingModes"    # [I

    .line 2856
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksInWindowingModes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2862
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2864
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    nop

    .line 2866
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2867
    return-void

    .line 2864
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingModes":[I
    throw v3

    .line 2866
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingModes":[I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStacksWithActivityTypes([I)V
    .locals 4
    .param p1, "activityTypes"    # [I

    .line 2871
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksWithActivityTypes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2877
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksWithActivityTypes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2879
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2880
    nop

    .line 2881
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2882
    return-void

    .line 2879
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityTypes":[I
    throw v3

    .line 2881
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityTypes":[I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeTask(I)Z
    .locals 10
    .param p1, "taskId"    # I

    .line 2203
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeTask()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2207
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2209
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v8, v1

    .line 2218
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 2219
    .local v6, "mPidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "remove-task"

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->removeTaskByIdLocked(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2219
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2223
    .end local v6    # "mPidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v1

    .line 2225
    .end local v7    # "callingPid":I
    .end local v8    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "restoredFromBundle"    # Z

    .line 2103
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2104
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2105
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2108
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 2109
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2110
    return-void

    .line 2109
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "referrer"    # Landroid/net/Uri;

    .line 3203
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3204
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    monitor-enter v0

    .line 3205
    :try_start_0
    iput-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3206
    iput-object p3, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3207
    iput-object p4, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3208
    if-eqz p5, :cond_0

    .line 3209
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3211
    :cond_0
    if-eqz p3, :cond_2

    .line 3219
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3220
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 3223
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3224
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 3226
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3227
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3228
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez v1, :cond_3

    .line 3230
    monitor-exit v0

    return-void

    .line 3232
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3234
    const/4 v1, 0x0

    .line 3235
    .local v1, "sendReceiver":Landroid/app/IAssistDataReceiver;
    const/4 v2, 0x0

    .line 3236
    .local v2, "sendBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3237
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3238
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 3239
    .local v4, "exists":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3240
    if-nez v4, :cond_4

    .line 3242
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3245
    :cond_4
    :try_start_2
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    move-object v1, v5

    if-eqz v5, :cond_6

    .line 3247
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 3255
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3256
    const-string v5, "taskId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3257
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3256
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3260
    :cond_5
    const-string v5, "activityId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3262
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3263
    const-string v5, "structure"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3264
    const-string v5, "content"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3265
    const-string v5, "receiverExtras"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3267
    .end local v4    # "exists":Z
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3268
    if-eqz v1, :cond_7

    .line 3270
    :try_start_3
    invoke-interface {v1, v2}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3277
    :goto_0
    goto :goto_1

    .line 3275
    :catch_0
    move-exception v3

    .line 3276
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle assist data failed, sendReceiver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3271
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 3279
    :goto_1
    return-void

    .line 3282
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3284
    .local v3, "ident":J
    :try_start_4
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.service.voice.VoiceInteractionService"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3286
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3288
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    const-string v7, "AssistContext"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_2

    .line 3290
    :cond_8
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3291
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3294
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "assist"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3297
    :try_start_5
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3300
    goto :goto_2

    .line 3298
    :catch_2
    move-exception v5

    .line 3299
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_6
    const-string v6, "ActivityTaskManager"

    const-string v7, "No activity to handle assist action."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3303
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3304
    nop

    .line 3305
    return-void

    .line 3303
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3267
    .end local v3    # "ident":J
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 3232
    .end local v1    # "sendReceiver":Landroid/app/IAssistDataReceiver;
    .end local v2    # "sendBundle":Landroid/os/Bundle;
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "horizontalSizeConfiguration"    # [I
    .param p3, "verticalSizeConfigurations"    # [I
    .param p4, "smallestSizeConfigurations"    # [I

    .line 4128
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4131
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4132
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 4136
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations([I[I[I)V

    .line 4138
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4139
    return-void

    .line 4133
    .restart local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSizeConfigurations: ActivityRecord not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "horizontalSizeConfiguration":[I
    .end local p3    # "verticalSizeConfigurations":[I
    .end local p4    # "smallestSizeConfigurations":[I
    throw v2

    .line 4138
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "horizontalSizeConfiguration":[I
    .restart local p3    # "verticalSizeConfigurations":[I
    .restart local p4    # "smallestSizeConfigurations":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .locals 14
    .param p1, "requestType"    # I
    .param p2, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p3, "receiverExtras"    # Landroid/os/Bundle;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "focused"    # Z
    .param p6, "newSessionId"    # Z

    .line 3680
    nop

    .line 3681
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3680
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .locals 14
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p2, "receiverExtras"    # Landroid/os/Bundle;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "flags"    # I

    .line 3688
    nop

    .line 3689
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3688
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 7
    .param p1, "delegatorToken"    # Landroid/os/IBinder;

    .line 1336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1337
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 1341
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1342
    .local v1, "permissionToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1343
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1346
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;

    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1348
    .local v2, "expireMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v4, 0x92f90

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1350
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

    invoke-static {v3, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1352
    .local v3, "forgetMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v5, 0x1b7f10

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1354
    return-object v1

    .line 1344
    .end local v2    # "expireMsg":Landroid/os/Message;
    .end local v3    # "forgetMsg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1338
    .end local v1    # "permissionToken":Landroid/os/IBinder;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only the system process can request a permission token, received request from uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 4507
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizeDockedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4510
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4511
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 4514
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4517
    nop

    .line 4518
    return-void

    .line 4514
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "dockedBounds":Landroid/graphics/Rect;
    .end local p2    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .end local p3    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .end local p4    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .end local p5    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4516
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "dockedBounds":Landroid/graphics/Rect;
    .restart local p2    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .restart local p3    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .restart local p4    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .restart local p5    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    .line 4631
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizePinnedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4634
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4635
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4636
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4639
    nop

    .line 4640
    return-void

    .line 4636
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pinnedBounds":Landroid/graphics/Rect;
    .end local p2    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4638
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pinnedBounds":Landroid/graphics/Rect;
    .restart local p2    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizeStack(ILandroid/graphics/Rect;ZZZI)V
    .locals 16
    .param p1, "stackId"    # I
    .param p2, "destBounds"    # Landroid/graphics/Rect;
    .param p3, "allowResizeInDockedMode"    # Z
    .param p4, "preserveWindows"    # Z
    .param p5, "animate"    # Z
    .param p6, "animationDuration"    # I

    .line 2729
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "resizeStack()"

    invoke-direct {v1, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2733
    .local v3, "ident":J
    :try_start_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2734
    if-eqz p5, :cond_2

    .line 2735
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2736
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 2737
    :try_start_3
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeStack: stackId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2758
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2738
    return-void

    .line 2740
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2744
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v15, p2

    move/from16 v14, p6

    :try_start_5
    invoke-virtual {v0, v6, v15, v14, v7}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2746
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_0

    .line 2741
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    move-object/from16 v15, p2

    move/from16 v14, p6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t support animated resize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "destBounds":Landroid/graphics/Rect;
    .end local p3    # "allowResizeInDockedMode":Z
    .end local p4    # "preserveWindows":Z
    .end local p5    # "animate":Z
    .end local p6    # "animationDuration":I
    throw v6

    .line 2756
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "destBounds":Landroid/graphics/Rect;
    .restart local p3    # "allowResizeInDockedMode":Z
    .restart local p4    # "preserveWindows":Z
    .restart local p5    # "animate":Z
    .restart local p6    # "animationDuration":I
    :catchall_0
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p6

    goto :goto_1

    .line 2747
    :cond_2
    move-object/from16 v15, p2

    move/from16 v14, p6

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2748
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_3

    .line 2749
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeStack: stackId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2758
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2750
    return-void

    .line 2752
    :cond_3
    :try_start_6
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v9, v0

    move-object/from16 v10, p2

    move/from16 v13, p4

    move/from16 v14, p3

    move v15, v6

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2756
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2758
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    nop

    .line 2760
    return-void

    .line 2756
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "destBounds":Landroid/graphics/Rect;
    .end local p3    # "allowResizeInDockedMode":Z
    .end local p4    # "preserveWindows":Z
    .end local p5    # "animate":Z
    .end local p6    # "animationDuration":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2758
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    .restart local p2    # "destBounds":Landroid/graphics/Rect;
    .restart local p3    # "allowResizeInDockedMode":Z
    .restart local p4    # "preserveWindows":Z
    .restart local p5    # "animate":Z
    .restart local p6    # "animationDuration":I
    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)V
    .locals 19
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 3422
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v6, "resizeTask()"

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3425
    .local v5, "ident":J
    :try_start_0
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3426
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3428
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_0

    .line 3429
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resizeTask: taskId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3472
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3430
    return-void

    .line 3439
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 3440
    .local v9, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v10

    if-nez v10, :cond_2

    .line 3443
    iget-object v8, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3444
    const-string v8, "ActivityTaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QuickReply: skip resize for QuickReply IM task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3472
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3445
    return-void

    .line 3448
    :cond_1
    :try_start_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeTask not allowed on task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "resizeMode":I
    throw v8

    .line 3450
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "resizeMode":I
    :cond_2
    const/4 v10, 0x5

    const/4 v11, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-ne v12, v10, :cond_3

    .line 3451
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    .line 3452
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v12

    .line 3451
    invoke-virtual {v10, v11, v12, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    move-object v9, v10

    move-object v15, v9

    goto :goto_0

    .line 3453
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-eq v12, v10, :cond_4

    .line 3454
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v12

    .line 3455
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v13

    .line 3454
    invoke-virtual {v12, v10, v13, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    move-object v9, v10

    move-object v15, v9

    goto :goto_0

    .line 3459
    :cond_4
    move-object v15, v9

    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    move v11, v8

    :goto_1
    move/from16 v16, v11

    .line 3460
    .local v16, "preserveWindow":Z
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    if-eq v15, v9, :cond_6

    .line 3462
    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-string v17, "resizeTask"

    move-object v9, v0

    move-object v10, v15

    move-object/from16 v18, v15

    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v18, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v15, v17

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3464
    const/16 v16, 0x0

    move/from16 v9, v16

    goto :goto_2

    .line 3460
    .end local v18    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    move-object/from16 v18, v15

    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v9, v16

    .line 3469
    .end local v16    # "preserveWindow":Z
    .local v9, "preserveWindow":Z
    :goto_2
    invoke-virtual {v0, v3, v4, v9, v8}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    .line 3470
    nop

    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v9    # "preserveWindow":Z
    .end local v18    # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3472
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3473
    nop

    .line 3474
    return-void

    .line 3470
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "resizeMode":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3472
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "resizeMode":I
    :catchall_1
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "restartActivityProcess()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2189
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2190
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2191
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 2192
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2197
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2192
    return-void

    .line 2194
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 2195
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2198
    nop

    .line 2199
    return-void

    .line 2195
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2197
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeAppSwitches()V
    .locals 3

    .line 4983
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "resumeAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4984
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4988
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4989
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4990
    return-void

    .line 4989
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public retrieveSettings(Landroid/content/ContentResolver;)V
    .locals 17
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 792
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 793
    const-string v0, "enable_freeform_support"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    move v5, v0

    .line 796
    .local v5, "freeformWindowManagement":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 797
    .local v6, "supportsMultiWindow":Z
    if-eqz v6, :cond_2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 798
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    move v7, v0

    .line 799
    .local v7, "supportsPictureInPicture":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 800
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v8

    .line 801
    .local v8, "supportsSplitScreenMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 802
    const-string v9, "android.software.activities_on_secondary_displays"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 803
    .local v9, "supportsMultiDisplay":Z
    const-string v0, "debug.force_rtl"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    move v10, v0

    .line 804
    .local v10, "forceRtl":Z
    const-string v0, "force_resizable_activities"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    move v11, v0

    .line 806
    .local v11, "forceResizable":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "android.hardware.type.pc"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 809
    .local v12, "isPc":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 811
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object v13, v0

    .line 812
    .local v13, "configuration":Landroid/content/res/Configuration;
    invoke-static {v2, v13}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 813
    if-eqz v10, :cond_5

    .line 815
    iget-object v0, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 818
    :cond_5
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 819
    iput-boolean v11, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 820
    if-nez v5, :cond_7

    if-nez v8, :cond_7

    if-nez v7, :cond_7

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    move v0, v4

    goto :goto_6

    :cond_7
    :goto_5
    move v0, v3

    .line 824
    .local v0, "multiWindowFormEnabled":Z
    :goto_6
    if-nez v6, :cond_8

    if-eqz v11, :cond_9

    :cond_8
    if-eqz v0, :cond_9

    .line 825
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 826
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 827
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 828
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 829
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_7

    .line 831
    :cond_9
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 832
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 833
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 834
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 835
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 837
    :goto_7
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    .line 838
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setSupportsPictureInPicture(Z)V

    .line 839
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setSupportsFreeformWindowManagement(Z)V

    .line 840
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerService;->setIsPc(Z)V

    .line 841
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 844
    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 846
    .local v4, "globalConfig":Landroid/content/res/Configuration;
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v15, :cond_a

    const-string v15, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "multiWindowFormEnabled":Z
    .local v16, "multiWindowFormEnabled":Z
    const-string v0, "Initial config: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v16    # "multiWindowFormEnabled":Z
    .restart local v0    # "multiWindowFormEnabled":Z
    :cond_a
    move/from16 v16, v0

    .line 849
    .end local v0    # "multiWindowFormEnabled":Z
    .restart local v16    # "multiWindowFormEnabled":Z
    :goto_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 850
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 852
    const v3, 0x1050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 855
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v15, 0x4

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_b

    .line 856
    const v3, 0x10e0129

    .line 857
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iget v15, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v15, v15

    div-float/2addr v3, v15

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    goto :goto_9

    .line 860
    :cond_b
    const v3, 0x113000e

    const/4 v15, 0x1

    invoke-virtual {v0, v3, v15, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    .line 863
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v4    # "globalConfig":Landroid/content/res/Configuration;
    .end local v16    # "multiWindowFormEnabled":Z
    :goto_9
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method scheduleAppGcsLocked()V
    .locals 2

    .line 6120
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$-xFyZDUKMraVkermSJGXQdN3oJ4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$-xFyZDUKMraVkermSJGXQdN3oJ4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 6121
    return-void
.end method

.method public setAMService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 7847
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7848
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/app/IActivityController;
    .param p2, "imAMonkey"    # Z

    .line 2621
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2624
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2625
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2626
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2628
    return-void

    .line 2627
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setBooted(Z)V
    .locals 1
    .param p1, "booted"    # Z

    .line 5939
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5940
    return-void
.end method

.method setBooting(Z)V
    .locals 1
    .param p1, "booting"    # Z

    .line 5931
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5932
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 6262
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 6263
    return-void
.end method

.method public setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "disable"    # Z

    .line 4779
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4780
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4781
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4782
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisablePreviewScreenshots: Unable to find activity for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4786
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4788
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setDisablePreviewScreenshots(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4790
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4791
    nop

    .line 4792
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4793
    return-void

    .line 4790
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "disable":Z
    throw v4

    .line 4792
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "disable":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDisplayToSingleTaskInstance(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 5118
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setDisplayToSingleTaskInstance"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5122
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5123
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 5124
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v2, :cond_0

    .line 5125
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->setDisplayToSingleTaskInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5128
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5129
    nop

    .line 5130
    return-void

    .line 5128
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFocusedStack(I)V
    .locals 7
    .param p1, "stackId"    # I

    .line 2142
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusedStack: stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2146
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2147
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2148
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_1

    .line 2149
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFocusedStack: No stack with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2158
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2150
    return-void

    .line 2152
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2153
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    const-string v5, "setFocusedStack"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2154
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2156
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2159
    nop

    .line 2160
    return-void

    .line 2156
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2158
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFocusedTask(I)V
    .locals 6
    .param p1, "taskId"    # I

    .line 2164
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusedTask: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2168
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2169
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2171
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_1

    .line 2172
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2180
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    return-void

    .line 2174
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2175
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    const-string v5, "setFocusedTask"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2176
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2178
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2181
    nop

    .line 2182
    return-void

    .line 2178
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2180
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1986
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1991
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 1992
    const-string v2, "ActivityTaskManager"

    const-string v3, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1995
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1996
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 1997
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1998
    return-void

    .line 1997
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;

    .line 5958
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5959
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5961
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5959
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5962
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5963
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z

    .line 1897
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1898
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1899
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    .line 1902
    iput-boolean p2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1905
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1906
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontmost changed immersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1909
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1910
    return-void

    .line 1900
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "immersive":Z
    throw v2

    .line 1909
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "immersive":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inheritShowWhenLocked"    # Z

    .line 4841
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4842
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4843
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4844
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4846
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4848
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4850
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4851
    nop

    .line 4852
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4853
    return-void

    .line 4850
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "inheritShowWhenLocked":Z
    throw v4

    .line 4852
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "inheritShowWhenLocked":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardDone(Z)V
    .locals 8
    .param p1, "done"    # Z

    .line 7783
    const-string v0, "ActivityTaskManager"

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 7792
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x50

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 7793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7795
    .local v2, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7796
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.fingerprint"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7797
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    .line 7798
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 7800
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v5, :cond_3

    .line 7801
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 7802
    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v6

    .line 7801
    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v5

    .line 7803
    .local v5, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v4

    .line 7804
    .local v6, "fingerprintCount":I
    :goto_0
    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    .line 7805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FP_ACCELERATE: mIsFingerprintEnabled="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7811
    .end local v5    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v6    # "fingerprintCount":I
    :cond_3
    nop

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7812
    goto :goto_3

    .line 7811
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 7807
    :catch_0
    move-exception v1

    .line 7808
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    .line 7809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: failed to get fingerprintCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7811
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 7814
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setFingerprintEnabled(Z)V

    goto :goto_5

    .line 7811
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7818
    .end local v2    # "origId":J
    :cond_4
    :goto_5
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sIsKeyguardDone:Z

    .line 7821
    invoke-static {p1}, Lcom/android/server/wm/OpQuickReplyInjector;->setKeyguardDone(Z)V

    .line 7824
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_5

    .line 7825
    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->setKeyguardDone(Z)V

    .line 7829
    :cond_5
    invoke-static {p1}, Lcom/android/server/am/OpBGFrozenInjector;->screenStateChangedEvent(Z)V

    .line 7831
    return-void

    .line 7785
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockScreenShown(ZZ)V
    .locals 6
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 3507
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3513
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3515
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_0

    .line 3516
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3517
    sget-object v3, Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3519
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3517
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3520
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3523
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3525
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3526
    nop

    .line 3527
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3529
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3534
    return-void

    .line 3525
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "keyguardShowing":Z
    .end local p2    # "aodShowing":Z
    throw v3

    .line 3527
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "keyguardShowing":Z
    .restart local p2    # "aodShowing":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3509
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 5066
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5068
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5069
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 5070
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5071
    return-void

    .line 5070
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 5049
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5052
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 5053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5054
    return-void

    .line 5053
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPersistentVrThread(I)V
    .locals 4
    .param p1, "tid"    # I

    .line 4953
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4962
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4963
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4964
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4965
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4966
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4967
    .end local v1    # "pid":I
    .end local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4968
    return-void

    .line 4967
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4955
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4956
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4957
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4959
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4405
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4406
    const-string v3, "setPictureInPictureParams"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4410
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v4, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4411
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4415
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4416
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4417
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4418
    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v5

    .line 4417
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4419
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4422
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4423
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4426
    nop

    .line 4427
    return-void

    .line 4423
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4425
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .line 1862
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1863
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1864
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 1865
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1870
    :cond_0
    :try_start_1
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRequestedOrientation() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1870
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1877
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1879
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    nop

    .line 1881
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1882
    return-void

    .line 1879
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "requestedOrientation":I
    throw v4

    .line 1881
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "requestedOrientation":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5748
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5749
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5750
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_1

    .line 5752
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_0

    .line 5753
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5754
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5755
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5756
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootActivityContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 5757
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5759
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3

    .line 5760
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5761
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_0

    .line 5764
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_0

    .line 5767
    :cond_2
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5772
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4

    .line 5773
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_2

    .line 5775
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5777
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    .line 5780
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5781
    .local v1, "lastResumedActivityTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_5

    .line 5783
    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .local v3, "session":Landroid/service/voice/IVoiceInteractionSession;
    goto :goto_1

    .line 5785
    .end local v3    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 5788
    .restart local v3    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :goto_1
    if-eqz v3, :cond_6

    .line 5793
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5798
    .end local v1    # "lastResumedActivityTask":Lcom/android/server/wm/TaskRecord;
    .end local v3    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v1, v3, :cond_7

    .line 5799
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 5801
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5802
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5804
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityDisplay;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5808
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->setRefreshRate(Landroid/os/IBinder;I)V

    .line 5813
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5818
    invoke-static {p1}, Lcom/android/server/wm/OpQuickReplyInjector;->setResumedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 5824
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 5829
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_8

    .line 5830
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/OpUtilInjector;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 5836
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_9

    .line 5837
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFront(Ljava/lang/String;I)V

    .line 5841
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5842
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5845
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5846
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5844
    invoke-static {v1, v2, p2}, Lcom/android/server/am/EventLogTags;->writeAmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5848
    return-void
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWhenLocked"    # Z

    .line 4825
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4826
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4827
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4828
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4830
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4832
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4834
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4835
    nop

    .line 4836
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4837
    return-void

    .line 4834
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "showWhenLocked":Z
    throw v4

    .line 4836
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "showWhenLocked":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSplitScreenResizing(Z)V
    .locals 4
    .param p1, "resizing"    # Z

    .line 4522
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setSplitScreenResizing()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4525
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4526
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setSplitScreenResizing(Z)V

    .line 4527
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4530
    nop

    .line 4531
    return-void

    .line 4527
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "resizing":Z
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4529
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "resizing":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3106
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3107
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3108
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 3109
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3110
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3111
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 3112
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 3114
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3115
    return-void

    .line 3114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskResizeable(II)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "resizeableMode"    # I

    .line 3409
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3410
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 3412
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v1, :cond_0

    .line 3413
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTaskResizeable: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3416
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskRecord;->setResizeMode(I)V

    .line 3417
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3418
    return-void

    .line 3417
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingMode(IIZ)V
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "toTop"    # Z

    .line 2352
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 2353
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    .line 2355
    return-void

    .line 2357
    :cond_0
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setTaskWindowingMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2361
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2363
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_1

    .line 2364
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2365
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2368
    :cond_1
    :try_start_3
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_2

    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: moving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2377
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2378
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_3

    .line 2379
    const-string v5, "setTaskWindowingMode"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2381
    :cond_3
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2383
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2384
    nop

    .line 2385
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2386
    return-void

    .line 2372
    .restart local v1    # "ident":J
    .restart local v3    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_4
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to windowing mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "toTop":Z
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2383
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "toTop":Z
    throw v3

    .line 2385
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z
    .locals 19
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "toTop"    # Z
    .param p4, "animate"    # Z
    .param p5, "initialBounds"    # Landroid/graphics/Rect;
    .param p6, "showRecents"    # Z

    .line 2815
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v5, "setTaskWindowingModeSplitScreenPrimary()"

    invoke-direct {v1, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2820
    .local v6, "ident":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2822
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_0

    .line 2823
    const-string v9, "ActivityTaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingModeSplitScreenPrimary: No task for id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2824
    nop

    .line 2845
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2824
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 2826
    :cond_0
    :try_start_3
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v9, :cond_1

    const-string v9, "ActivityTaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingModeSplitScreenPrimary: moving task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to createMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " toTop="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2834
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v10, p5

    :try_start_4
    invoke-virtual {v9, v3, v10}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2835
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v9

    .line 2836
    .local v9, "windowingMode":I
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 2837
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_2

    .line 2838
    const-string v12, "setTaskWindowingModeSplitScreenPrimary"

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2840
    :cond_2
    const/4 v13, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v11

    move/from16 v14, p4

    move/from16 v15, p6

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 2843
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v9, v12, :cond_3

    const/4 v8, 0x1

    .line 2845
    :cond_3
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2843
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 2830
    .end local v9    # "windowingMode":I
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    move-object/from16 v10, p5

    :try_start_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to split-screen windowing mode"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "createMode":I
    .end local p3    # "toTop":Z
    .end local p4    # "animate":Z
    .end local p5    # "initialBounds":Landroid/graphics/Rect;
    .end local p6    # "showRecents":Z
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2845
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "createMode":I
    .restart local p3    # "toTop":Z
    .restart local p4    # "animate":Z
    .restart local p5    # "initialBounds":Landroid/graphics/Rect;
    .restart local p6    # "showRecents":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p5

    :goto_0
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "createMode":I
    .end local p3    # "toTop":Z
    .end local p4    # "animate":Z
    .end local p5    # "initialBounds":Landroid/graphics/Rect;
    .end local p6    # "showRecents":Z
    throw v0

    .line 2847
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "createMode":I
    .restart local p3    # "toTop":Z
    .restart local p4    # "animate":Z
    .restart local p5    # "initialBounds":Landroid/graphics/Rect;
    .restart local p6    # "showRecents":Z
    :catchall_2
    move-exception v0

    move-object/from16 v10, p5

    :goto_1
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "turnScreenOn"    # Z

    .line 4857
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4858
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4859
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4860
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4862
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4864
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4866
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4867
    nop

    .line 4868
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4869
    return-void

    .line 4866
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "turnScreenOn":Z
    throw v4

    .line 4868
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "turnScreenOn":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .locals 2
    .param p1, "usageStatsManager"    # Landroid/app/usage/UsageStatsManagerInternal;

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 936
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 938
    return-void

    .line 937
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .locals 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"    # Z

    .line 4022
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4023
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4024
    if-eqz p2, :cond_0

    .line 4025
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 4027
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4030
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4031
    return-void

    .line 4030
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Landroid/content/ComponentName;

    .line 4546
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4548
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 4551
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4552
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4553
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4555
    if-eqz v2, :cond_3

    .line 4560
    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v1

    move v3, v1

    .local v3, "err":I
    if-eqz v1, :cond_0

    .line 4562
    return v3

    .line 4566
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4568
    .local v4, "callingId":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4569
    if-eqz p2, :cond_1

    move-object v6, p3

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iput-object v6, v2, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 4572
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4573
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4575
    :cond_2
    const/4 v6, 0x0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4578
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4575
    return v6

    .line 4576
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "err":I
    .end local v4    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "enabled":Z
    .end local p3    # "packageName":Landroid/content/ComponentName;
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4578
    .restart local v0    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "err":I
    .restart local v4    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "enabled":Z
    .restart local p3    # "packageName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4556
    .end local v3    # "err":I
    .end local v4    # "callingId":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4553
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setVrThread(I)V
    .locals 4
    .param p1, "tid"    # I

    .line 4943
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4944
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4945
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4946
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4947
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4948
    .end local v1    # "pid":I
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4949
    return-void

    .line 4948
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 923
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 926
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 928
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 929
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 930
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 931
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldDisableNonVrUiLocked()Z
    .locals 1

    .line 5011
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 2243
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2244
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2245
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2246
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/ActivityStack;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2248
    .end local v1    # "srec":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2249
    const/4 v0, 0x0

    return v0

    .line 2248
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 3941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3943
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3944
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3945
    .local v3, "caller":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3946
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-eq v4, v3, :cond_0

    .line 3947
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showAssistFromActivity failed: caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not current top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3960
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3949
    return v5

    .line 3951
    :cond_0
    :try_start_2
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_1

    .line 3952
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showAssistFromActivity failed: caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not visible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3960
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3954
    return v5

    .line 3956
    .end local v3    # "caller":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3957
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3957
    return v2

    .line 3956
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "args":Landroid/os/Bundle;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3960
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "args":Landroid/os/Bundle;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4057
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4058
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4059
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4060
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4062
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 4063
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4064
    return-void

    .line 4063
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 19
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "bOptions"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .line 1091
    move-object/from16 v0, p0

    const-string v1, "startActivities"

    .line 1092
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "startActivities"

    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move/from16 v5, p7

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v2

    .line 1095
    .end local p7    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    .line 1096
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v14

    .line 1095
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v16, "startActivities"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move v15, v2

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3

    return v3
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 12
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;

    .line 1082
    nop

    .line 1084
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1082
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .locals 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "userId"    # I

    .line 1286
    move-object/from16 v1, p0

    new-instance v0, Landroid/app/WaitResult;

    invoke-direct {v0}, Landroid/app/WaitResult;-><init>()V

    move-object v2, v0

    .line 1287
    .local v2, "res":Landroid/app/WaitResult;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1288
    const-string v0, "startActivityAndWait"

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "startActivityAndWait"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move/from16 v6, p11

    :try_start_1
    invoke-virtual {v1, v0, v4, v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move v4, v0

    .line 1292
    .end local p11    # "userId":I
    .local v4, "userId":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v5, "startActivityAndWait"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v7, p3

    :try_start_3
    invoke-virtual {v0, v7, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1293
    move-object/from16 v5, p1

    :try_start_4
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 1294
    move-object/from16 v8, p2

    :try_start_5
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1295
    move-object/from16 v9, p4

    :try_start_6
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1296
    move-object/from16 v10, p5

    :try_start_7
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1297
    move-object/from16 v11, p6

    :try_start_8
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1298
    move/from16 v12, p7

    :try_start_9
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1299
    move/from16 v13, p8

    :try_start_a
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1300
    move-object/from16 v14, p10

    :try_start_b
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1301
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1302
    move-object/from16 v15, p9

    :try_start_c
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1303
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1305
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1306
    return-object v2

    .line 1305
    :catchall_0
    move-exception v0

    move-object/from16 v15, p9

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    goto :goto_2

    :catchall_6
    move-exception v0

    goto :goto_1

    :catchall_7
    move-exception v0

    goto :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v5, p1

    :goto_0
    move-object/from16 v8, p2

    goto :goto_1

    :catchall_9
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    :goto_1
    move-object/from16 v9, p4

    :goto_2
    move-object/from16 v10, p5

    :goto_3
    move-object/from16 v11, p6

    :goto_4
    move/from16 v12, p7

    :goto_5
    move/from16 v13, p8

    :goto_6
    move-object/from16 v15, p9

    move-object/from16 v14, p10

    goto :goto_8

    .end local v4    # "userId":I
    .restart local p11    # "userId":I
    :catchall_a
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v14, p10

    goto :goto_7

    :catchall_b
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v14, p10

    move/from16 v6, p11

    :goto_7
    move v4, v6

    .end local p11    # "userId":I
    .restart local v4    # "userId":I
    :goto_8
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_8
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/os/IBinder;ZI)I
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "permissionToken"    # Landroid/os/IBinder;
    .param p12, "ignoreTargetSecurity"    # Z
    .param p13, "userId"    # I

    .line 1374
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    move/from16 v4, p12

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1375
    if-eqz v2, :cond_d

    .line 1379
    if-eqz v3, :cond_1

    .line 1382
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "android.permission.START_ACTIVITY_AS_CALLER"

    const-string v7, "startActivityAsCaller"

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1388
    .local v0, "sourceToken":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 1390
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1391
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with expired permission token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v6

    .line 1394
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_0
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with invalid permission token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v6

    .line 1400
    .end local v0    # "sourceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_1
    move-object/from16 v0, p5

    .line 1403
    .restart local v0    # "sourceToken":Landroid/os/IBinder;
    :cond_2
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1404
    .local v6, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_c

    .line 1407
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_b

    .line 1413
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1418
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_4

    .line 1421
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v8, :cond_3

    goto :goto_0

    .line 1422
    :cond_3
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling activity in uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v9, v9, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " must be system uid or original calling uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v7

    .line 1428
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_4
    :goto_0
    if-eqz v4, :cond_7

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 1434
    :cond_5
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v7

    .line 1430
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_6
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v7

    .line 1438
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_7
    :goto_1
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1439
    .local v7, "targetUid":I
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1440
    .local v8, "targetPackage":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v9

    .line 1441
    .end local v0    # "sourceToken":Landroid/os/IBinder;
    .local v9, "isResolver":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1443
    const/16 v0, -0x2710

    move/from16 v10, p13

    if-ne v10, v0, :cond_8

    .line 1444
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v10, v0

    .line 1449
    .end local p13    # "userId":I
    .local v10, "userId":I
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v5, "startActivityAsCaller"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v11, p3

    :try_start_2
    invoke-virtual {v0, v11, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1450
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1451
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1452
    move-object/from16 v12, p4

    :try_start_3
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1453
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1454
    move-object/from16 v13, p6

    :try_start_4
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1455
    move/from16 v14, p7

    :try_start_5
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1456
    move/from16 v15, p8

    :try_start_6
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1457
    move-object/from16 v5, p10

    :try_start_7
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1460
    if-eqz v9, :cond_9

    const/16 v16, 0x0

    move/from16 v1, v16

    goto :goto_2

    :cond_9
    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1463
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1449
    return v0

    .line 1465
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v11, p3

    :goto_3
    move-object/from16 v12, p4

    :goto_4
    move-object/from16 v13, p6

    :goto_5
    move/from16 v14, p7

    :goto_6
    move/from16 v15, p8

    :goto_7
    move-object/from16 v5, p10

    .line 1477
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_8
    throw v0

    .line 1414
    .end local v7    # "targetUid":I
    .end local v8    # "targetPackage":Ljava/lang/String;
    .end local v9    # "isResolver":Z
    .end local v10    # "userId":I
    .local v0, "sourceToken":Landroid/os/IBinder;
    .restart local p13    # "userId":I
    :cond_a
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    :try_start_8
    new-instance v1, Ljava/lang/SecurityException;

    const-string v7, "Must be called from an activity that is declared in the android package"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v1

    .line 1408
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_b
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v1, Ljava/lang/SecurityException;

    const-string v7, "Called without a process attached to activity"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v1

    .line 1405
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_c
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with bad activity token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v1

    .line 1376
    .end local v0    # "sourceToken":Landroid/os/IBinder;
    .end local v6    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :cond_d
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be called from an activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "permissionToken":Landroid/os/IBinder;
    .end local p12    # "ignoreTargetSecurity":Z
    .end local p13    # "userId":I
    throw v0

    .line 1441
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "permissionToken":Landroid/os/IBinder;
    .restart local p12    # "ignoreTargetSecurity":Z
    .restart local p13    # "userId":I
    :catchall_0
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    :goto_9
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "userId"    # I

    .line 1105
    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .param p12, "validateIncomingUser"    # Z

    .line 1114
    const-string v0, "startActivityAsUser"

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    .line 1117
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1116
    const-string v7, "startActivityAsUser"

    move/from16 v3, p11

    move/from16 v4, p12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v2

    .line 1120
    .end local p11    # "userId":I
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1121
    move-object v3, p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1122
    move-object v5, p2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1123
    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1124
    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1125
    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1126
    move/from16 v9, p7

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1127
    move/from16 v10, p8

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1128
    move-object/from16 v11, p9

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1129
    move-object/from16 v12, p10

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1130
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1120
    return v0
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 1551
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v1, "startActivityFromRecents()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1555
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1556
    .local v1, "callingUid":I
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1557
    .local v2, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1559
    .local v3, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1562
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    .line 1564
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v0, v1, p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1568
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    return v6

    .line 1566
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "bOptions":Landroid/os/Bundle;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1568
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bOptions":Landroid/os/Bundle;
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "target"    # Landroid/content/IIntentSender;
    .param p3, "whitelistToken"    # Landroid/os/IBinder;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 1139
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "startActivityIntentSender"

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1141
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_1
    :goto_0
    instance-of v0, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_3

    .line 1149
    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    .line 1151
    .local v16, "pir":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1155
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1157
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 1159
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1160
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v16

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0

    .line 1159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1146
    .end local v16    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad PendingIntent object"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 4
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "config"    # Landroid/content/res/Configuration;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "userId"    # I

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1314
    const-string v1, "startActivityWithConfig"

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1315
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "startActivityWithConfig"

    invoke-virtual {p0, v1, v2, p11, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v1

    move p11, v1

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "startActivityWithConfig"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1319
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1320
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1321
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1322
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1323
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1324
    invoke-virtual {v1, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1325
    invoke-virtual {v1, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1326
    invoke-virtual {v1, p9}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1328
    invoke-virtual {v1, p11}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1330
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "bOptions"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v0, "startAssistantActivity"

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p7

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1518
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1519
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1520
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1521
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1522
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1524
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1517
    return v0
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 3562
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 3563
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz v0, :cond_0

    .line 3564
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    .line 3565
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 3566
    .local v1, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v1, :cond_2

    .line 3567
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 3568
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3573
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 3574
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_1

    .line 3575
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3576
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3577
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3578
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result v6

    .line 3577
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    .line 3579
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3581
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-void

    .line 3569
    .end local v2    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected in-place ActivityOption with valid animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 4584
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4586
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4587
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 4590
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4595
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz v2, :cond_1

    .line 4596
    const-string v2, "ActivityTaskManager"

    const-string v3, "Pending start of voice interaction already."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4599
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 4600
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4601
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4602
    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4603
    return-void

    .line 4592
    .restart local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_0
    :try_start_2
    const-string v2, "ActivityTaskManager"

    const-string v3, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4588
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only focused activity can call startVoiceInteraction"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callingActivity":Landroid/os/IBinder;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v2

    .line 4600
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callingActivity":Landroid/os/IBinder;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2953
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2954
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2955
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2956
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2958
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2959
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2960
    return-void

    .line 2959
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 16
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bOptions"    # Landroid/os/Bundle;

    .line 1168
    move-object/from16 v1, p2

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1173
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1174
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1175
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 1176
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1177
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1179
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1181
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1182
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1184
    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 1186
    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_3
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1190
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    and-int/lit8 v0, v0, 0x8

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    move v9, v0

    .line 1192
    .local v9, "debug":Z
    const/4 v10, 0x0

    .line 1195
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const v12, 0x10400

    .line 1198
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1195
    invoke-interface {v0, v1, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1201
    .local v0, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_2

    :cond_5
    move v11, v6

    .line 1202
    .local v11, "N":I
    :goto_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v11, :cond_9

    .line 1203
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1204
    .local v13, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1205
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1208
    add-int/2addr v12, v8

    .line 1209
    if-ge v12, v11, :cond_6

    .line 1210
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v10, v14

    .line 1212
    :cond_6
    if-eqz v9, :cond_9

    .line 1213
    const-string v14, "ActivityTaskManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next matching activity: found current "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v7, "ActivityTaskManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Next matching activity: next is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_7

    .line 1216
    const-string v15, "null"

    goto :goto_4

    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1215
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 1202
    .end local v13    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1222
    .end local v0    # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_9
    :goto_5
    goto :goto_6

    .line 1221
    :catch_0
    move-exception v0

    .line 1224
    :goto_6
    if-nez v10, :cond_b

    .line 1226
    :try_start_5
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1227
    if-eqz v9, :cond_a

    const-string v0, "ActivityTaskManager"

    const-string v7, "Next matching activity: nothing found"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_a
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1231
    :cond_b
    :try_start_6
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, -0x1e000001

    and-int/2addr v0, v7

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1243
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1244
    .local v0, "wasFinishing":Z
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1247
    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1248
    .local v7, "resultTo":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1249
    .local v8, "resultWho":Ljava/lang/String;
    iget v11, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1250
    .local v11, "requestCode":I
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1251
    if-eqz v7, :cond_c

    .line 1252
    invoke-virtual {v7, v5, v8, v11}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1255
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1257
    .local v13, "origId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v15

    const-string v12, "startNextMatchingActivity"

    .line 1258
    invoke-virtual {v15, v1, v12}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1259
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1260
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1261
    invoke-virtual {v12, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1262
    if-eqz v7, :cond_d

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1263
    invoke-virtual {v12, v8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1264
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1265
    const/4 v15, -0x1

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1266
    invoke-virtual {v12, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1267
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1268
    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1269
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1270
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1271
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v6

    .line 1272
    .local v6, "res":I
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1275
    if-eqz v6, :cond_e

    .line 1276
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return v4

    .line 1278
    :cond_e
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x1

    return v4

    .line 1279
    .end local v0    # "wasFinishing":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "res":I
    .end local v7    # "resultTo":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "resultWho":Ljava/lang/String;
    .end local v9    # "debug":Z
    .end local v10    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "requestCode":I
    .end local v13    # "origId":J
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_8
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8
.end method

.method public startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "assistDataReceiver"    # Landroid/app/IAssistDataReceiver;
    .param p3, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 1530
    move-object/from16 v7, p0

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "startRecentsActivity()"

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1532
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1534
    .local v9, "origId":J
    :try_start_0
    iget-object v11, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1535
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1536
    .local v15, "recentsComponent":Landroid/content/ComponentName;
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v16

    .line 1539
    .local v16, "recentsUid":I
    new-instance v12, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;I)V

    .line 1541
    .local v12, "anim":Lcom/android/server/wm/RecentsAnimation;
    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v17, p2

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V

    .line 1543
    .end local v12    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v15    # "recentsComponent":Landroid/content/ComponentName;
    .end local v16    # "recentsUid":I
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1545
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1546
    nop

    .line 1547
    return-void

    .line 1543
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v8    # "callingPid":I
    .end local v9    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "assistDataReceiver":Landroid/app/IAssistDataReceiver;
    .end local p3    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1545
    .restart local v8    # "callingPid":I
    .restart local v9    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "assistDataReceiver":Landroid/app/IAssistDataReceiver;
    .restart local p3    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :catchall_1
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 2964
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "startSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2971
    .local v0, "ident":J
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 2975
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2976
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2978
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v4, :cond_0

    .line 2979
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2987
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2979
    return-void

    .line 2983
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    const-string v6, "startSystemLockTaskMode"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2984
    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2985
    .end local v4    # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2987
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    nop

    .line 2989
    return-void

    .line 2985
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2987
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "userId"    # I

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 1495
    const-string v0, "startVoiceActivity"

    invoke-virtual {p0, p2, p3, p11, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p11

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1499
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1500
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1501
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1502
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1503
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1504
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1505
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1506
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1507
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1508
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1497
    return v0

    .line 1493
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null session or interactor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAppSwitches()V
    .locals 5

    .line 4972
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "stopAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4973
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4976
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4977
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStartController;->schedulePendingActivityLaunches(J)V

    .line 4978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4979
    return-void

    .line 4978
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    .line 4607
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4608
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 4609
    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2996
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 2998
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2999
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3000
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_0

    .line 3001
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3003
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3004
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3005
    return-void

    .line 3004
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public stopSystemLockTaskMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3016
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 3019
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "stopSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3021
    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .locals 1

    .line 4613
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4614
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 4613
    return v0
.end method

.method public suppressResizeConfigChanges(Z)V
    .locals 3
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4228
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4230
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 4231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4232
    return-void

    .line 4231
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3623
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3624
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3626
    .local v1, "ident":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3627
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_5

    .line 3633
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3634
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_4

    .line 3639
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 3640
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 3641
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 3645
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3646
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_1

    .line 3647
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3651
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_1

    .line 3653
    :cond_3
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3656
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3657
    nop

    .line 3658
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3659
    return-void

    .line 3635
    .restart local v1    # "ident":J
    .restart local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: the activity doesn\'t have a stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 3628
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3656
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 3658
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unhandledBack()V
    .locals 4

    .line 2440
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2445
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->unhandledBackLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    nop

    .line 2449
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2450
    return-void

    .line 2447
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2449
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 3672
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "unregisterTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3675
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 10
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "event"    # I

    .line 5915
    const/4 v0, 0x0

    .line 5916
    .local v0, "taskRoot":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5917
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_0

    .line 5918
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5919
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 5920
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5924
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    sget-object v3, Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5926
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 5924
    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5927
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5928
    return-void
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6
    .param p1, "component"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resumed"    # Z

    .line 5908
    sget-object v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5909
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5910
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5908
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5911
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5912
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 12
    .param p1, "values"    # Landroid/content/res/Configuration;

    .line 4684
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4687
    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    .line 4689
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    move-object p1, v2

    .line 4692
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_1

    .line 4693
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4695
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4693
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4696
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4699
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v10, v2

    .line 4701
    .local v10, "origId":J
    if-eqz p1, :cond_2

    .line 4702
    :try_start_1
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4704
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4707
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 4709
    :cond_3
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4707
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4709
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    throw v1

    .line 4711
    .end local v10    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z

    .line 5369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 7
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "deferResume"    # Z

    .line 5375
    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .locals 8
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "persistent"    # Z
    .param p5, "userId"    # I
    .param p6, "deferResume"    # Z
    .param p7, "result"    # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 5410
    const/4 v0, 0x0

    .line 5411
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5413
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    .line 5414
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5417
    :cond_0
    if-eqz p1, :cond_1

    .line 5418
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    .line 5422
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 5424
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_2

    .line 5425
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5429
    :cond_2
    if-eqz p7, :cond_4

    .line 5430
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5431
    if-nez v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5433
    :cond_4
    return v1

    .line 5424
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_5

    .line 5425
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_5
    throw v2
.end method

.method updateCpuStats()V
    .locals 3

    .line 5904
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5905
    return-void
.end method

.method public updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z
    .locals 11
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 4644
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateDisplayOverrideConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4648
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootActivityContainer;->isDisplayAdded(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4650
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_0

    .line 4651
    const-string v1, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update display configuration for non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4657
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_2

    .line 4659
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    move-object p1, v1

    .line 4662
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_3

    .line 4663
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4664
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4663
    invoke-static {v1, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4665
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4668
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v9, v3

    .line 4670
    .local v9, "origId":J
    if-eqz p1, :cond_4

    .line 4671
    :try_start_2
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4673
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4675
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 4677
    :cond_5
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4675
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4677
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    .end local p2    # "displayId":I
    throw v1

    .line 4679
    .end local v9    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    .restart local p2    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z
    .locals 6
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"    # Z
    .param p4, "displayId"    # I

    .line 5571
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .locals 9
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"    # Z
    .param p4, "displayId"    # I
    .param p5, "result"    # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 5582
    const/4 v0, 0x0

    .line 5583
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5585
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    .line 5586
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5589
    :cond_0
    if-eqz p1, :cond_2

    .line 5590
    if-nez p4, :cond_1

    .line 5594
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    move-object v3, p0

    move-object v4, p1

    move v8, p3

    :try_start_0
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 5597
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    move-result v2

    move v0, v2

    .line 5601
    :cond_2
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 5603
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_3

    .line 5604
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5608
    :cond_3
    if-eqz p5, :cond_5

    .line 5609
    iput v0, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5610
    if-nez v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5612
    :cond_5
    return v1

    .line 5603
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_6

    .line 5604
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_6
    throw v2
.end method

.method public updateLockTaskFeatures(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 4811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4812
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4813
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskFeatures()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4816
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4817
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4818
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4817
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4820
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4821
    return-void

    .line 4820
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 3080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3081
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3082
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskPackages()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :cond_0
    monitor-enter p0

    .line 3086
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3086
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 3089
    monitor-exit p0

    .line 3090
    return-void

    .line 3089
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateOomAdj()V
    .locals 3

    .line 5900
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5901
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .locals 10
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .line 5380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5382
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5383
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 5385
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5388
    nop

    .line 5389
    return-void

    .line 5385
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    .end local p2    # "userId":I
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5387
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updateSleepIfNeededLocked()V
    .locals 7

    .line 5860
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5861
    .local v0, "shouldSleep":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5862
    .local v2, "wasSleeping":Z
    const/4 v3, 0x0

    .line 5864
    .local v3, "updateOomAdj":Z
    const-string v4, "ActivityTaskManager"

    const/16 v5, 0xe

    if-nez v0, :cond_1

    .line 5868
    if-eqz v2, :cond_0

    .line 5869
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5870
    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/StatsLog;->write(II)I

    .line 5872
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5873
    iput v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5874
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5875
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5877
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 5878
    if-eqz v2, :cond_3

    .line 5879
    const/4 v3, 0x1

    goto :goto_0

    .line 5881
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    .line 5882
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5883
    invoke-static {v5, v1}, Landroid/util/StatsLog;->write(II)I

    .line 5885
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_2

    .line 5886
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5888
    :cond_2
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5889
    const-string v1, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 5891
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5892
    const/4 v3, 0x1

    .line 5894
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 5895
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v5, v4}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5897
    :cond_4
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2681
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2682
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2683
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2684
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->willActivityBeVisibleLocked(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2686
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2687
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
