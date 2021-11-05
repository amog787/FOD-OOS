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
        Lcom/android/server/wm/ActivityTaskManagerService$LayoutReason;,
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

.field static final LAYOUT_REASON_CONFIG_CHANGED:I = 0x1

.field static final LAYOUT_REASON_VISIBILITY_CHANGED:I = 0x2

.field private static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field private static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field private static final START_AS_CALLER_TOKEN_EXPIRED_TIMEOUT:J = 0x1b7f10L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT:J = 0x927c0L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT_IMPL:J = 0x92f90L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IMMERSIVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

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

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppSwitchesAllowedTime:J

.field mAppWarnings:Lcom/android/server/wm/AppWarnings;

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

.field private mDreaming:Z

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

.field private mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

.field mForceResizableActivities:Z

.field private mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field mHasHeavyWeightFeature:Z

.field mHasLeanbackFeature:Z

.field mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mKeyguardShown:Z

.field mLastANRState:Ljava/lang/String;

.field mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastStopAppSwitchesTime:J

.field private mLayoutReasons:I

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

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

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

.field mSizeCompatFreeform:Z

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

.field private mSysUiServiceComponent:Landroid/content/ComponentName;

.field final mSystemThread:Landroid/app/ActivityThread;

.field private mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private mTempConfig:Landroid/content/res/Configuration;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field mTopAction:Ljava/lang/String;

.field mTopComponent:Landroid/content/ComponentName;

.field mTopData:Ljava/lang/String;

.field mTopProcessState:I

.field private mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUiContext:Landroid/content/Context;

.field mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field private final mUpdateLock:Landroid/os/UpdateLock;

.field private final mUpdateOomAdjRunnable:Ljava/lang/Runnable;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mViSessionId:I

.field mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVr2dDisplayId:I

.field mVrController:Lcom/android/server/wm/VrController;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 777
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 418
    new-instance v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 426
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 438
    new-instance v0, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v0}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 439
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    .line 441
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 443
    new-instance v0, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 468
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 500
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 512
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 524
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 542
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 549
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 575
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 576
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 582
    const-string v2, "android.intent.action.MAIN"

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 586
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 587
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 588
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 600
    new-instance v0, Landroid/os/UpdateLock;

    const-string v2, "immersive"

    invoke-direct {v0, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 606
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 652
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 659
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    .line 665
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 682
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 685
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 729
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 769
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    .line 778
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 779
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 780
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 781
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 782
    new-instance v0, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {v0}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 783
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 784
    const-string v0, "ro.opengles.version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 785
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 786
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 789
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 793
    new-instance v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-direct {v0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # I

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/content/res/Configuration;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/MirrorActiveUids;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/content/res/Configuration;
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 348
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/ActivityTaskManagerService;IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "x3"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskChangeNotificationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Landroid/app/IApplicationThread;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/Intent;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/os/IBinder;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # I
    .param p9, "x9"    # I
    .param p10, "x10"    # Landroid/app/ProfilerInfo;
    .param p11, "x11"    # Landroid/os/Bundle;
    .param p12, "x12"    # I
    .param p13, "x13"    # Z

    .line 348
    invoke-direct/range {p0 .. p13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/ActivityTaskManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Z

    .line 348
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"    # Z

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method private applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4971
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4972
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

    .line 4974
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4975
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4974
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveStackToDisplay(IIZ)V

    .line 4977
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$nuSrfdXdOXcutw3SV8Ualpreu30;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$nuSrfdXdOXcutw3SV8Ualpreu30;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4991
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 3969
    if-eqz p2, :cond_0

    .line 3970
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3972
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3973
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3975
    :cond_1
    return-void
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 5941
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    .line 5942
    .local v6, "inm":Landroid/app/INotificationManager;
    if-nez v6, :cond_0

    .line 5943
    return-void

    .line 5946
    :cond_0
    :try_start_0
    const-string v1, "android"

    const-string v2, "android"

    const/4 v3, 0x0

    const/16 v4, 0xb

    move-object v0, v6

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5950
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5948
    :catch_1
    move-exception v0

    .line 5949
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Error canceling notification for service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5951
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 5953
    :goto_1
    return-void
.end method

.method private checkAllowAppSwitchUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 2818
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 2819
    .local v0, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 2820
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2821
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2822
    return v2

    .line 2820
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2826
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 3835
    nop

    .line 3836
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3835
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

    .line 3860
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3852
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 3853
    return v0

    .line 3855
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method private collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;

    .line 2624
    if-eqz p2, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2625
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0

    .line 2628
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6053
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
    const/4 v1, 0x0

    .line 5276
    .local v1, "appThread":Landroid/app/IApplicationThread;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "ACTIVITY "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5278
    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5279
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5280
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5281
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5282
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 5284
    :cond_0
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5286
    :goto_0
    if-eqz p6, :cond_1

    .line 5287
    const/4 v3, 0x1

    invoke-virtual {p4, p3, v0, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 5289
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5290
    if-eqz v1, :cond_2

    .line 5293
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5294
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5295
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-interface {v1, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5300
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5302
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 5294
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "appThread":Landroid/app/IApplicationThread;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p5    # "args":[Ljava/lang/String;
    .end local p6    # "dumpAll":Z
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5304
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    .restart local v1    # "appThread":Landroid/app/IApplicationThread;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p5    # "args":[Ljava/lang/String;
    .restart local p6    # "dumpAll":Z
    :catch_0
    move-exception v2

    .line 5305
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Got a RemoteException while dumping the activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5302
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 5303
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Failure while dumping the activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5308
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 5289
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private enforceCallerIsDream(Ljava/lang/String;)V
    .locals 4
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 1346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1348
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1354
    nop

    .line 1355
    return-void

    .line 1349
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callerPackageName":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callerPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1354
    throw v2
.end method

.method private enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3842
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    :cond_0
    return-void
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 5332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5335
    return-void

    .line 5333
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
    .locals 24
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

    .line 3903
    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v2, "enqueueAssistContext()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3906
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3907
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object v14, v0

    .line 3908
    .local v14, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v15, 0x0

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v15

    .line 3909
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-nez v0, :cond_1

    .line 3910
    const-string v1, "ActivityTaskManager"

    const-string v2, "getAssistContextExtras failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3913
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3914
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssistContextExtras failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3917
    :cond_2
    if-eqz p7, :cond_4

    .line 3918
    if-eqz v11, :cond_3

    .line 3919
    :try_start_2
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3920
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, v1, :cond_3

    .line 3921
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

    .line 3923
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3940
    .end local v1    # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    move-object v9, v0

    goto :goto_1

    .line 3927
    :cond_4
    :try_start_3
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v0, v1

    .line 3928
    if-nez v0, :cond_5

    .line 3929
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

    .line 3931
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3933
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3934
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3933
    :cond_6
    move-object v9, v0

    .line 3940
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3941
    .local v8, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_7

    .line 3942
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3944
    :cond_7
    const-string v0, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3945
    const-string v0, "android.intent.extra.ASSIST_UID"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3947
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v16, v8

    .end local v8    # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move-object/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "activity":Lcom/android/server/wm/ActivityRecord;
    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    move-object v1, v0

    .line 3949
    .local v1, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3952
    if-eqz p8, :cond_8

    .line 3953
    iget v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3956
    :cond_8
    move-object/from16 v2, v17

    .end local v17    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :try_start_6
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v18

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget v3, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v21, p1

    move/from16 v22, v3

    move/from16 v23, p13

    invoke-interface/range {v18 .. v23}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3958
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3959
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide/from16 v3, p11

    :try_start_7
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3963
    nop

    .line 3964
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3960
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide/from16 v3, p11

    .line 3961
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_9
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3965
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v16    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    move-wide/from16 v3, p11

    :goto_3
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/app/PictureInPictureParams;

    .line 4413
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_4

    .line 4418
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4419
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3

    .line 4424
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4429
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4431
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v3

    .line 4430
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4432
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 4434
    .local v1, "minAspectRatio":F
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 4436
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

    .line 4438
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4436
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4442
    .end local v1    # "minAspectRatio":F
    .end local v2    # "maxAspectRatio":F
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 4444
    return-object v0

    .line 4425
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

    .line 4420
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

    .line 4414
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

    .line 5608
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5610
    return-void
.end method

.method private forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "permissionToken"    # Landroid/os/IBinder;

    .line 5613
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5614
    return-void
.end method

.method private getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2616
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2617
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 2618
    const/4 v1, 0x0

    return-object v1

    .line 2620
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method

.method static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5634
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5637
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 5635
    :cond_1
    :goto_0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/WindowProcessController;

    .line 5641
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
    .param p2, "isLowResolution"    # Z
    .param p3, "restoreFromDisk"    # Z

    .line 4690
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4691
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4693
    .local v1, "task":Lcom/android/server/wm/Task;
    if-nez v1, :cond_0

    .line 4694
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

    .line 4695
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4697
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4699
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/Task;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0

    .line 4697
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isSameApp(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2753
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    .line 2754
    if-nez p2, :cond_0

    .line 2755
    const/4 v0, 0x0

    return v0

    .line 2757
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2759
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2757
    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2760
    .local v0, "uid":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2762
    .end local v0    # "uid":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2764
    :cond_1
    nop

    .line 2765
    :goto_0
    const/4 v0, 0x1

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

.method static synthetic lambda$resizeDockedStack$5(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 4471
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4472
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4471
    :goto_0
    return v0
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

    .line 4394
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4395
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4396
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4395
    const-string v2, "tron_varz_picture_in_picture_actions_count"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4398
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4399
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x338

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4400
    .local v0, "lm":Landroid/metrics/LogMaker;
    const/16 v1, 0x339

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4401
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4403
    .end local v0    # "lm":Landroid/metrics/LogMaker;
    :cond_1
    return-void
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 4
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4088
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4089
    .local v0, "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    return-void

    .line 4090
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 4094
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4098
    .local v1, "token":J
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4100
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4101
    nop

    .line 4107
    .end local v1    # "token":J
    goto :goto_0

    .line 4100
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4101
    nop

    .end local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4104
    .end local v1    # "token":J
    .restart local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    :catch_0
    move-exception v1

    .line 4105
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 4108
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .locals 4
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3980
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3981
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3982
    .local v1, "receiver":Landroid/app/IAssistDataReceiver;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3983
    if-eqz v1, :cond_0

    .line 3985
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3987
    .local v0, "sendBundle":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    const-string v3, "receiverExtras"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3989
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v2, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3991
    goto :goto_0

    .line 3990
    :catch_0
    move-exception v2

    .line 3993
    .end local v0    # "sendBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 3982
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

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .locals 11
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 5957
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_0

    .line 5958
    return-void

    .line 5961
    :cond_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    .line 5962
    .local v8, "inm":Landroid/app/INotificationManager;
    if-nez v8, :cond_1

    .line 5963
    return-void

    .line 5967
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 5968
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10403a4

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 5969
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 5968
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 5970
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x108080a

    .line 5973
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 5974
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5975
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5976
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 5977
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5979
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10403a5

    .line 5981
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5980
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 5982
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5985
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5987
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

    .line 5992
    goto :goto_0

    .line 5991
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5989
    :catch_1
    move-exception v1

    .line 5990
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Error showing notification for heavy-weight app"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5992
    nop

    .line 5995
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "text":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 5993
    :catch_2
    move-exception v1

    .line 5994
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to create context for heavy notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5997
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "relaunchReason"    # I

    .line 5028
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 5034
    const/4 v0, 0x0

    return-object v0

    .line 5032
    :cond_0
    const-string v0, "free_resize"

    return-object v0

    .line 5030
    :cond_1
    const-string v0, "window_resize"

    return-object v0
.end method

.method private sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V
    .locals 5
    .param p1, "l"    # Ljava/util/Locale;

    .line 5598
    const-string v0, "ActivityTaskManager"

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 5599
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    .line 5600
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

    .line 5601
    const-string v3, "SystemLocale"

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5604
    .end local v1    # "service":Landroid/os/IBinder;
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_0

    .line 5602
    :catch_0
    move-exception v1

    .line 5603
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error storing locale for decryption UI"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5605
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 5592
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5593
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 5594
    return-void
.end method

.method private setTaskWindowingModeSplitScreen(IIZ)Z
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "toTop"    # Z

    .line 2979
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2983
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskWindowingModeSplitScreen: Is in lock task mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2984
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return v2

    .line 2989
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2991
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_1

    .line 2992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTaskWindowingModeSplitScreenPrimary: No task for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    return v2

    .line 2995
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2999
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3000
    return v2

    .line 3003
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    .line 3004
    .local v1, "prevMode":I
    const/4 v3, 0x1

    if-ne v1, p2, :cond_3

    .line 3006
    return v3

    .line 3009
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToSplitScreenPrimaryTask(Lcom/android/server/wm/Task;Z)V

    .line 3010
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    if-eq v1, v4, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 2996
    .end local v1    # "prevMode":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to split-screen windowing mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2980
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling setTaskWindowingModeSplitScreen with nonsplit-screen mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private start()V
    .locals 2

    .line 1087
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1088
    return-void
.end method

.method private startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I
    .param p13, "validateIncomingUser"    # Z

    .line 1162
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p11

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1163
    const-string v4, "startActivityAsUser"

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1165
    const-string v10, "startActivityAsUser"

    move/from16 v6, p12

    move/from16 v7, p13

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v5

    .line 1170
    .end local p12    # "userId":I
    .local v5, "userId":I
    sget-boolean v6, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v6, :cond_2

    .line 1171
    if-nez v3, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    const-string v6, "extra_window_mode"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1172
    .local v6, "flag":I
    :goto_0
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    const/16 v7, 0x64

    if-eq v6, v7, :cond_1

    const/16 v7, 0x65

    if-ne v6, v7, :cond_2

    .line 1175
    :cond_1
    invoke-static {v2, v3, v5, v1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v4

    return v4

    .line 1181
    .end local v6    # "flag":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1182
    move-object v6, p1

    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1183
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1184
    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1185
    move-object/from16 v8, p5

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1186
    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1187
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1188
    move/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1189
    move/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1190
    move-object/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1191
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1192
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 1193
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    .line 1181
    return v4
.end method

.method private startLockTaskModeLocked(Lcom/android/server/wm/Task;Z)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"    # Z

    .line 3229
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

    .line 3230
    :cond_0
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 3234
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3235
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 3242
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->shouldSkipLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3243
    return-void

    .line 3253
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3254
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3257
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->removeStacksInWindowingModes([I)V

    .line 3259
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v1}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3261
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3262
    nop

    .line 3263
    return-void

    .line 3261
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3262
    throw v4

    .line 3236
    .end local v1    # "callingUid":I
    .end local v2    # "ident":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid task, not in foreground"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3231
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_0
    return-void
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "targetUid"    # I

    .line 4111
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4113
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 4114
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4115
    .local v0, "wasRunningVoice":Z
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 4116
    if-nez v0, :cond_2

    .line 4117
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4118
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 4121
    .end local v0    # "wasRunningVoice":Z
    :cond_2
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .locals 3

    .line 6034
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6035
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6036
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 6038
    :cond_0
    return-void
.end method

.method private stopLockTaskModeInternal(Lcom/android/server/wm/Task;Z)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"    # Z

    .line 3266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3267
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3269
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3270
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V

    .line 3271
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3274
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 3275
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_0

    .line 3276
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3279
    .end local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3280
    nop

    .line 3281
    return-void

    .line 3271
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
    .end local p1    # "task":Lcom/android/server/wm/Task;
    .end local p2    # "isSystemCaller":Z
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3279
    .restart local v0    # "callingUid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "task":Lcom/android/server/wm/Task;
    .restart local p2    # "isSystemCaller":Z
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3280
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

    .line 5384
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

    .line 5588
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

    .line 5589
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 5665
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 5668
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5669
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    .line 5670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5673
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 5674
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 5675
    .local v2, "configuration":Landroid/content/res/Configuration;
    iput v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 5676
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5677
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5678
    return-void

    .line 5677
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "resumed"    # Lcom/android/server/wm/ActivityRecord;

    .line 6041
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 6042
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6043
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6042
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6045
    :cond_0
    if-eqz p1, :cond_1

    .line 6046
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6047
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6046
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6049
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6050
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 5654
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

    .line 5657
    .local v0, "inputMethodExists":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_error_dialogs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 5659
    .local v3, "hideDialogsSet":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 5660
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    nop

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 5662
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "wakeFullness"    # I
    .param p3, "testPssMode"    # Z

    .line 5312
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5313
    .local v0, "sleepToken":J
    nop

    .line 5314
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result v2

    .line 5313
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5315
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5316
    .local v3, "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    const-wide v4, 0x20900000002L

    .line 5317
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5316
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5318
    .end local v3    # "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    goto :goto_0

    .line 5319
    :cond_0
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5320
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5322
    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5324
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5325
    return-void
.end method


# virtual methods
.method acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 5795
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5796
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5797
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    .line 5798
    .local v1, "token":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5800
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
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2020
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

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2023
    .local v1, "origId":J
    const-string v3, "activityDestroyed"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2025
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2026
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    .line 2027
    const-string v6, "activityDestroyed"

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2031
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    nop

    .line 2033
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2034
    return-void

    .line 2030
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2031
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 2033
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z

    .line 1913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1915
    .local v0, "origId":J
    const-wide/16 v2, 0x20

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1916
    const-string v5, "activityIdle"

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1917
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1918
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_0

    .line 1919
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1928
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1919
    return-void

    .line 1921
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v7, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 1923
    if-eqz p3, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1924
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 1926
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1928
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1926
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "config":Landroid/content/res/Configuration;
    .end local p3    # "stopProfiling":Z
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1928
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "config":Landroid/content/res/Configuration;
    .restart local p3    # "stopProfiling":Z
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1930
    throw v4
.end method

.method public final activityPaused(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1955
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1958
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1959
    const-string v3, "activityPaused"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1960
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1961
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 1962
    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 1964
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1965
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1969
    invoke-static {v6}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1971
    return-void

    .line 1965
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

    .line 2038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2039
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2040
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchedLocked(Landroid/os/IBinder;)V

    .line 2041
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2042
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    return-void

    .line 2041
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

    .line 1935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1936
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1937
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;)V

    .line 1938
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1939
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1940
    return-void

    .line 1938
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
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .line 1979
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1980
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1985
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 1986
    .local v2, "restartingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1988
    .local v3, "restartingUid":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1989
    const-string v5, "activityStopped"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1990
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1991
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3

    .line 1992
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1993
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1996
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v8, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v2, v8

    .line 1997
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v8, v8, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v3, v8

    .line 1999
    :cond_2
    invoke-virtual {v5, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 2001
    :cond_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2002
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2004
    if-eqz v2, :cond_4

    .line 2010
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2011
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "restartActivityProcess"

    invoke-virtual {v4, v2, v3, v6}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 2013
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 2015
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    return-void

    .line 2002
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

    .line 1944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1945
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1946
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    .line 1947
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1948
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1949
    return-void

    .line 1947
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

    .line 3488
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3489
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3492
    .local v11, "callingIdent":J
    :try_start_0
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3493
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3494
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_8

    .line 3498
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v14, v2

    .line 3499
    .local v14, "comp":Landroid/content/ComponentName;
    if-eqz v14, :cond_7

    .line 3503
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v2, v3, :cond_6

    .line 3504
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v2, v3, :cond_5

    .line 3509
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3510
    :try_start_3
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3512
    :cond_0
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 3513
    :try_start_5
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3515
    :cond_1
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 3516
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 3519
    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3522
    :cond_2
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    .line 3523
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3522
    invoke-interface {v2, v14, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v15, v2

    .line 3524
    .local v15, "ainfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v10, :cond_4

    .line 3530
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    move-object v8, v2

    .line 3531
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 3532
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 3531
    move-object v6, v15

    move-object/from16 v7, p2

    move-object/from16 v17, v0

    move-object v0, v8

    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 3535
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/Task;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_3

    .line 3537
    :try_start_9
    const-string v3, "addAppTask"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 3538
    const/4 v3, -0x1

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3547
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3538
    return v3

    .line 3540
    :cond_3
    :try_start_a
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v4, p3

    :try_start_b
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3544
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3547
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    return v3

    .line 3525
    .end local v2    # "task":Lcom/android/server/wm/Task;
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

    .line 3504
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

    .line 3503
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .line 3505
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad thumbnail size: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
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

    .line 3500
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

    .line 3545
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

    .line 3495
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

    .line 3545
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

    .line 3547
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

    .line 3545
    :catchall_4
    move-exception v0

    goto :goto_2

    .line 3547
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3548
    throw v0
.end method

.method addWindowLayoutReasons(I)V
    .locals 1
    .param p1, "reasons"    # I

    .line 5584
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 5585
    return-void
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 4885
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4888
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4890
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4891
    nop

    .line 4892
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4893
    return-void

    .line 4890
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4891
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/content/ComponentName;
    throw v3

    .line 4892
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

    .line 2100
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2101
    .local v0, "nextState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2112
    return-void
.end method

.method assertPackageMatchesCallingUid(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2774
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2775
    return-void

    .line 2777
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2779
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cancelRecentsAnimation(Z)V
    .locals 9
    .param p1, "restoreHomeStackPosition"    # Z

    .line 3142
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelRecentsAnimation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 3144
    .local v0, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3146
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3148
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_0

    .line 3149
    const/4 v6, 0x2

    goto :goto_0

    .line 3150
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

    .line 3148
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 3151
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3153
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3154
    nop

    .line 3155
    return-void

    .line 3151
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

    .line 3153
    .restart local v0    # "callingUid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "restoreHomeStackPosition":Z
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3154
    throw v4
.end method

.method public cancelTaskWindowTransition(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 4658
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelTaskWindowTransition()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4662
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4663
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4665
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_0

    .line 4666
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

    .line 4667
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4672
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4667
    return-void

    .line 4669
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 4670
    .end local v3    # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4672
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4673
    nop

    .line 4674
    return-void

    .line 4670
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

    .line 4672
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4673
    throw v2
.end method

.method checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z
    .locals 5
    .param p1, "sourcePid"    # I
    .param p2, "sourceUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "name"    # Ljava/lang/String;

    .line 2785
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 2786
    return v1

    .line 2789
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2790
    return v1

    .line 2793
    :cond_1
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2794
    .local v3, "perm":I
    if-nez v3, :cond_2

    .line 2795
    return v1

    .line 2797
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2798
    return v1

    .line 2803
    :cond_3
    if-eq p4, v2, :cond_5

    if-eq p4, p2, :cond_5

    .line 2804
    invoke-static {v0, p3, p4, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2805
    if-nez v3, :cond_4

    .line 2806
    return v1

    .line 2808
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2809
    return v1

    .line 2813
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

    .line 2814
    const/4 v0, 0x0

    return v0
.end method

.method checkGetTasksPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 3848
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 5929
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 5933
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5934
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5936
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5934
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5937
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5938
    return-void

    .line 5930
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

    .line 5057
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "clearLaunchParamsForPackages"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5060
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5061
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 5060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5063
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5064
    return-void

    .line 5063
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

    .line 6087
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method continueWindowLayout()V
    .locals 2

    .line 5572
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout(Z)V

    .line 5576
    return-void
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2218
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2219
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2220
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 2221
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2226
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2221
    return v4

    .line 2223
    :cond_0
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2226
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2223
    return v4

    .line 2224
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

    .line 2226
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    throw v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2232
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 2233
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2235
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2236
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2237
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2238
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    return v5

    .line 2240
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2241
    .local v6, "under":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_2

    .line 2242
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iput-object v7, v6, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2244
    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result v5

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2247
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2244
    return v5

    .line 2245
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "under":Lcom/android/server/wm/ActivityRecord;
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

    .line 2247
    .restart local v0    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2248
    throw v3
.end method

.method protected createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;
    .locals 7
    .param p1, "uiContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "systemDir"    # Ljava/io/File;

    .line 950
    new-instance v6, Lcom/android/server/wm/AppWarnings;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    return-object v6
.end method

.method protected createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;
    .locals 2

    .line 943
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 944
    .local v0, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->initialize()V

    .line 945
    return-object v0
.end method

.method deferWindowLayout()V
    .locals 1

    .line 5561
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5564
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 5567
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 5568
    return-void
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 4642
    if-eqz p3, :cond_0

    .line 4643
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4648
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4649
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4650
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4653
    nop

    .line 4654
    return-void

    .line 4650
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

    .line 4652
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .restart local p3    # "message":Ljava/lang/CharSequence;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4653
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

    .line 5169
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

    .line 5171
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .param p8, "header"    # Ljava/lang/String;

    .line 5175
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5177
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result v0

    .line 5179
    .local v0, "printedAnything":Z
    move v4, v0

    .line 5181
    .local v4, "needSep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5182
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5181
    const-string v5, "  ResumedActivity: "

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    .line 5184
    .local v1, "printed":Z
    if-eqz v1, :cond_0

    .line 5185
    const/4 v0, 0x1

    .line 5186
    const/4 v2, 0x0

    .end local v4    # "needSep":Z
    .local v2, "needSep":Z
    goto :goto_0

    .line 5184
    .end local v2    # "needSep":Z
    .restart local v4    # "needSep":Z
    :cond_0
    move v2, v4

    .line 5189
    .end local v4    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_0
    if-nez p7, :cond_2

    .line 5190
    if-eqz v2, :cond_1

    .line 5191
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5193
    :cond_1
    const/4 v0, 0x1

    .line 5194
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "  "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5195
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/TaskOrganizerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5198
    :cond_2
    if-nez v0, :cond_3

    .line 5199
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
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
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    :try_start_1
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

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
    .local v0, "lastTask":Lcom/android/server/wm/Task;
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
    .local v1, "lastTask":Lcom/android/server/wm/Task;
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
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5253
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eq v1, v0, :cond_3

    .line 5254
    move-object v1, v0

    .line 5255
    :try_start_3
    const-string v3, "TASK "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5256
    const-string v3, " id="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5257
    const-string v3, " userId="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5258
    if-eqz p6, :cond_2

    .line 5259
    const-string v3, "  "

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5262
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move-object/from16 v19, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_2

    .line 5253
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_3
    move-object/from16 v19, v1

    .line 5262
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "lastTask":Lcom/android/server/wm/Task;
    .local v19, "lastTask":Lcom/android/server/wm/Task;
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

    .end local v19    # "lastTask":Lcom/android/server/wm/Task;
    .end local v20    # "i":I
    .end local v21    # "newArgs":[Ljava/lang/String;
    .restart local v1    # "lastTask":Lcom/android/server/wm/Task;
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
    .end local v1    # "lastTask":Lcom/android/server/wm/Task;
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

    .line 5204
    const-string v0, "ACTIVITY MANAGER CONTAINERS (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5205
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5206
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5207
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 5210
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5212
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5129
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5130
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5131
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5133
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5135
    :goto_0
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5138
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5141
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5142
    const-string v1, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5143
    return-void

    .line 5146
    :cond_0
    const/4 v1, 0x0

    .line 5147
    .local v1, "latest":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 5148
    .local v4, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 5149
    :cond_1
    move-object v1, v4

    .line 5147
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5152
    :cond_3
    const-string v2, "File: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5154
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5155
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5157
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 5158
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5160
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5164
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 5155
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "latest":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5160
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "latest":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v2

    .line 5161
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5162
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5165
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method enableScreenAfterBoot(Z)V
    .locals 2
    .param p1, "booted"    # Z

    .line 5625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeBootProgressEnableScreen(J)V

    .line 5626
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 5628
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5629
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    .line 5630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5631
    return-void

    .line 5630
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

    .line 4526
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4530
    return-void

    .line 4528
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "changes"    # I

    .line 6058
    const/4 v0, 0x1

    .line 6059
    .local v0, "kept":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 6061
    .local v1, "mainStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 6062
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 6066
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 6069
    :cond_0
    if-eqz p1, :cond_1

    .line 6070
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 6074
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6079
    :cond_1
    return v0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4301
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4302
    const-string v3, "enterPictureInPictureMode"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4306
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 4307
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4356
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    return v5

    .line 4312
    :cond_0
    :try_start_2
    const-string v4, "enterPictureInPictureMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4314
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4356
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4314
    return v6

    .line 4317
    :cond_1
    :try_start_3
    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;

    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 4339
    .local v4, "enterPipRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4343
    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerService$2;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService$2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4351
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 4353
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4356
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4353
    return v5

    .line 4354
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

    .line 4356
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4357
    throw v2
.end method

.method public final finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I

    .line 1777
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    if-eqz v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1778
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1782
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1783
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v10, v0

    .line 1784
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x1

    if-nez v10, :cond_2

    .line 1785
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1787
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1790
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v1, v8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v11

    .line 1792
    .local v11, "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v12, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1794
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1795
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1799
    :cond_3
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v13, v0

    .line 1800
    .local v13, "tr":Lcom/android/server/wm/Task;
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v14, v0

    .line 1801
    .local v14, "rootR":Lcom/android/server/wm/ActivityRecord;
    if-nez v14, :cond_4

    .line 1802
    const-string v0, "ActivityTaskManager"

    const-string v2, "Finishing task with all activities already finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1807
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1812
    :cond_5
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_6

    .line 1814
    nop

    .line 1815
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, -0x1

    move-object/from16 v15, p1

    :try_start_5
    invoke-virtual {v0, v15, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v4, v0

    .line 1816
    .local v4, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_7

    .line 1818
    const/4 v5, 0x1

    .line 1820
    .local v5, "resumeOK":Z
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v5, v0

    .line 1824
    goto :goto_1

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    :try_start_7
    iput-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1823
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1826
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v5, :cond_7

    .line 1827
    const-string v0, "ActivityTaskManager"

    const-string v3, "Not finishing activity because controller resumed"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->activityFinished(Landroid/content/pm/ActivityInfo;)V

    .line 1832
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1812
    .end local v4    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "resumeOK":Z
    :cond_6
    move-object/from16 v15, p1

    .line 1839
    :cond_7
    :try_start_8
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_8

    .line 1840
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 1843
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide/from16 v16, v4

    .line 1844
    .local v16, "origId":J
    const-string v0, "finishActivity"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1847
    if-ne v9, v3, :cond_9

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    move v0, v3

    .line 1849
    .local v0, "finishWithRootActivity":Z
    const/4 v3, 0x2

    if-eq v9, v3, :cond_b

    if-eqz v0, :cond_a

    if-ne v10, v14, :cond_a

    move-wide/from16 v20, v6

    goto :goto_3

    .line 1862
    :cond_a
    :try_start_9
    const-string v18, "app-request"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/16 v19, 0x1

    move-object v2, v10

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-wide/from16 v20, v6

    move-object/from16 v6, v18

    move/from16 v7, v19

    :try_start_a
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1864
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1865
    .local v2, "res":Z
    if-nez v2, :cond_c

    .line 1866
    const-string v3, "ActivityTaskManager"

    const-string v4, "Failed to finish by app-request"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1873
    .end local v0    # "finishWithRootActivity":Z
    .end local v2    # "res":Z
    :catchall_0
    move-exception v0

    move-wide/from16 v20, v6

    goto :goto_5

    .line 1849
    .restart local v0    # "finishWithRootActivity":Z
    :cond_b
    move-wide/from16 v20, v6

    .line 1856
    :goto_3
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "finish-activity"

    invoke-virtual {v3, v13, v2, v0, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1858
    const/4 v3, 0x1

    .line 1860
    .local v3, "res":Z
    iput v2, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v2, v3

    .line 1869
    .end local v3    # "res":Z
    .restart local v2    # "res":Z
    :cond_c
    :goto_4
    nop

    .line 1873
    :try_start_b
    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/am/OpStartAppControlInjector;->activityFinished(Landroid/content/pm/ActivityInfo;)V

    .line 1875
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1876
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1869
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1873
    .end local v0    # "finishWithRootActivity":Z
    .end local v2    # "res":Z
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_c
    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v2}, Lcom/android/server/am/OpStartAppControlInjector;->activityFinished(Landroid/content/pm/ActivityInfo;)V

    .line 1875
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1876
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1877
    nop

    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resultCode":I
    .end local p3    # "resultData":Landroid/content/Intent;
    .end local p4    # "finishTask":I
    throw v0

    .line 1878
    .end local v13    # "tr":Lcom/android/server/wm/Task;
    .end local v14    # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "origId":J
    .restart local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resultCode":I
    .restart local p3    # "resultData":Landroid/content/Intent;
    .restart local p4    # "finishTask":I
    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    :goto_6
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 1787
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    :catchall_4
    move-exception v0

    move-object/from16 v15, p1

    :goto_7
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1883
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1886
    .local v1, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1887
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1888
    nop

    .line 1906
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1888
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1893
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    .line 1894
    nop

    .line 1906
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1894
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1897
    :cond_1
    :try_start_5
    sget-object v4, Lcom/android/server/wm/-$$Lambda$hwQLWout8wOWvnHXCxS5LJZGGvw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hwQLWout8wOWvnHXCxS5LJZGGvw;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 1899
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 1897
    invoke-static {v4, v3, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v4

    .line 1900
    .local v4, "p":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v3, v6, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 1902
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1904
    nop

    .line 1906
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1904
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1906
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "p":Lcom/android/internal/util/function/pooled/PooledFunction;
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 1908
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

    .line 4124
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 4125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 4126
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4127
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 4129
    :cond_0
    return-void
.end method

.method public final finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 2889
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2892
    .local v1, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2893
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 2905
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2893
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2895
    :cond_0
    :try_start_3
    sget-object v4, Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;->INSTANCE:Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 2896
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 2897
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2895
    invoke-static {v4, v5, v3, p2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 2900
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2901
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2903
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2905
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2906
    nop

    .line 2907
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2908
    return-void

    .line 2905
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2906
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resultWho":Ljava/lang/String;
    .end local p3    # "requestCode":I
    throw v3

    .line 2907
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resultWho":Ljava/lang/String;
    .restart local p3    # "requestCode":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 4
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3353
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3358
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3360
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3361
    nop

    .line 3362
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3364
    return-void

    .line 3360
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3361
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "session":Landroid/service/voice/IVoiceInteractionSession;
    throw v3

    .line 3362
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

    .line 4146
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4147
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4148
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4149
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4151
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

    .line 4152
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

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3323
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3324
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3325
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3326
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 3328
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

    .line 3333
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3328
    return-object v4

    .line 3330
    .end local v5    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3333
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3330
    return-object v4

    .line 3331
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

    .line 3333
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    throw v2
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object v0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 3088
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getAllStackInfos()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3091
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3092
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getAllStackInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3095
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    return-object v3

    .line 3093
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

    .line 3095
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3096
    throw v2
.end method

.method public getAllStackInfosOnDisplay(I)Ljava/util/List;
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 3115
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getAllStackInfos()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3118
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3119
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getAllStackInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3122
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3119
    return-object v3

    .line 3120
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
    .end local p1    # "displayId":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3122
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3123
    throw v2
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 6163
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6164
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6165
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6166
    return-object v0
.end method

.method getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 4

    .line 3553
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3554
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3555
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

    .line 3339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3340
    .local v0, "callingUid":I
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 3341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3343
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3344
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3344
    return-object v4

    .line 3345
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

    .line 3347
    .restart local v0    # "callingUid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3348
    throw v3
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .locals 1

    .line 6122
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 14
    .param p1, "requestType"    # I

    .line 3808
    nop

    .line 3810
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3808
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

    .line 3811
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    if-nez v0, :cond_0

    .line 3812
    const/4 v1, 0x0

    return-object v1

    .line 3814
    :cond_0
    monitor-enter v0

    .line 3815
    :goto_0
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 3817
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3819
    :goto_1
    goto :goto_0

    .line 3818
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3821
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3822
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3823
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3824
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3825
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3826
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3827
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object v1

    .line 3826
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3821
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

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2610
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2611
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

    .line 2612
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

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2575
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2579
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x11

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2580
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    .line 2581
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallingPackage, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_1
    move-object v2, v3

    .line 2584
    .local v2, "resultPkg":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2585
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 2586
    .local v3, "callerPkg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_2

    .line 2587
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

    .line 2590
    :cond_2
    invoke-static {v2}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->shouldRunLoginBusiness(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2591
    invoke-static {v3}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2593
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_3

    .line 2594
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replaced resultPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    .end local v3    # "callerPkg":Ljava/lang/String;
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2602
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

    .line 2604
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

    .line 5339
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5340
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5341
    .local v1, "ci":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5343
    return-object v1

    .line 5342
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

    .line 5328
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6

    .line 1067
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1068
    .local v0, "config":Landroid/content/pm/ConfigurationInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1070
    .local v2, "globalConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1071
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1072
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1073
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 1075
    :cond_0
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1077
    :cond_1
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1079
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1081
    :cond_2
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1082
    .end local v2    # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1083
    return-object v0

    .line 1082
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getDisplayId(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2289
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2290
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2291
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v3

    .line 2292
    .local v3, "displayId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v2, v3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2294
    .end local v3    # "displayId":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2295
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

.method public getFilteredTasks(IZ)Ljava/util/List;
    .locals 17
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2865
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2866
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2867
    .local v11, "callingPid":I
    invoke-virtual {v1, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result v12

    .line 2868
    .local v12, "crossUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2869
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2868
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v13

    .line 2870
    .local v13, "profileIds":[I
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    .line 2871
    .local v14, "callingProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v13

    if-ge v0, v2, :cond_0

    .line 2872
    aget v2, v13, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2874
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 2876
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2879
    const-string v0, "getTasks"

    invoke-virtual {v1, v0, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v7

    .line 2880
    .local v7, "allowed":Z
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    move-object v4, v15

    move/from16 v5, p2

    move v6, v10

    move v8, v12

    move-object/from16 v16, v9

    move-object v9, v14

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/RootWindowContainer;->getRunningTasks(ILjava/util/List;ZIZZLandroid/util/ArraySet;)V

    .line 2882
    .end local v7    # "allowed":Z
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2884
    return-object v15

    .line 2882
    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    :goto_1
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2300
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2303
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2305
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    .line 2306
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v3, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    return-object v4

    .line 2308
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2308
    return-object v4

    .line 2309
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

    .line 2311
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2312
    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 5

    .line 2162
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2165
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2166
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-nez v2, :cond_1

    .line 2167
    const/4 v3, -0x3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2169
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2170
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
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

    .line 5354
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    .line 5355
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5354
    :goto_0
    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .locals 2

    .line 1044
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1045
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "pid"    # I

    .line 1052
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1056
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1057
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

    .line 1058
    .end local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1053
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .locals 3

    .line 6126
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

    .line 6127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6128
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6129
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 6130
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6132
    :cond_1
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .locals 17
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "intents"    # [Landroid/content/Intent;
    .param p10, "resolvedTypes"    # [Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "bOptions"    # Landroid/os/Bundle;

    .line 6003
    move/from16 v13, p1

    const/4 v0, 0x0

    .line 6004
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 6005
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6006
    const/4 v1, 0x0

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 6007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p6

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not in any stack"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    return-object v1

    .line 6010
    :cond_0
    move-object/from16 v15, p6

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 6011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is finishing"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    return-object v1

    .line 6010
    :cond_1
    move-object v12, v0

    goto :goto_0

    .line 6004
    :cond_2
    move-object/from16 v15, p6

    move-object v12, v0

    .line 6016
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v16, v12

    .end local v12    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 6019
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    const/high16 v1, 0x20000000

    and-int v1, p11, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6020
    .local v1, "noCreate":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 6021
    return-object v0

    .line 6023
    :cond_4
    if-ne v13, v14, :cond_6

    .line 6024
    move-object/from16 v2, v16

    .end local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v3, :cond_5

    .line 6025
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 6027
    :cond_5
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6023
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    move-object/from16 v2, v16

    .line 6029
    .end local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .locals 3

    .line 4735
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4737
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4738
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_0

    .line 4739
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4741
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4742
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

    .line 4947
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 2205
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2206
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2207
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2208
    if-nez v1, :cond_0

    .line 2209
    const/4 v0, 0x0

    return-object v0

    .line 2211
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    return-object v0

    .line 2207
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

    .line 2193
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2194
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2195
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2196
    if-nez v1, :cond_0

    .line 2197
    const/4 v0, -0x1

    return v0

    .line 2199
    :cond_0
    iget v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    return v0

    .line 2195
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

    .line 1024
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .locals 2

    .line 3304
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3306
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

    .line 4390
    const/4 v0, 0x3

    return v0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5012
    const-string v0, "getPackageAskScreenCompat"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5013
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5014
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 5015
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

    .line 4157
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4158
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4159
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4160
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4162
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4163
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

    .line 6096
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 6100
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 6101
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6103
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4995
    const-string v0, "getPackageScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4996
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4997
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4998
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

    .line 6241
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .locals 1

    .line 6115
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_0

    .line 6116
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 6118
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 6211
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 6212
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6213
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, p2, :cond_1

    .line 6214
    return-object v0

    .line 6216
    :cond_1
    return-object v1
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .locals 8
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 6191
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6192
    return-object v0

    .line 6195
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6196
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6197
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 6198
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 6199
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 6200
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 6201
    .local v6, "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v1, :cond_1

    .line 6202
    return-object v6

    .line 6199
    .end local v6    # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 6197
    .end local v4    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6207
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 6170
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 6173
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 6174
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 6175
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 6176
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6177
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6178
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6179
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6181
    goto :goto_1

    .line 6183
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    return-object v4

    .line 6177
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6187
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
    .locals 9
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

    .line 3070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3071
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v6, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 3072
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v1, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v7

    .line 3076
    .local v7, "allowed":Z
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    if-eq v6, v0, :cond_0

    .line 3077
    invoke-static {p3}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLockerEnabled(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->mIsAppLockerEnabledForRecents:Z

    .line 3080
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3081
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    move v3, v7

    move v4, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 3082
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2071
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2072
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2073
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2074
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2075
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

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "preferredPackage"    # Ljava/lang/String;

    .line 6144
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

    .line 6145
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 6147
    .local v1, "useSystemProvidedLauncher":Z
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6153
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 6149
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6151
    .local v2, "secondaryHomePackage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6152
    .end local v2    # "secondaryHomePackage":Ljava/lang/String;
    nop

    .line 6155
    :goto_2
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6156
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 6157
    const-string v2, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6159
    :cond_3
    return-object v0
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 3101
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3104
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3105
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3108
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3105
    return-object v3

    .line 3106
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

    .line 3108
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingMode":I
    .restart local p2    # "activityType":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3109
    throw v2
.end method

.method public getStackInfoOnDisplay(III)Landroid/app/ActivityManager$StackInfo;
    .locals 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 3129
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3132
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3133
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3133
    return-object v3

    .line 3134
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
    .end local p3    # "displayId":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3136
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingMode":I
    .restart local p2    # "activityType":I
    .restart local p3    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    throw v2
.end method

.method getSysUiServiceComponentLocked()Landroid/content/ComponentName;
    .locals 2

    .line 6107
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 6108
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 6109
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 6111
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskId"    # I

    .line 2487
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskBounds()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2489
    .local v0, "ident":J
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2491
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2492
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2494
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_0

    .line 2495
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

    .line 2496
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    return-object v2

    .line 2498
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2499
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2500
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    .line 2501
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2503
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    nop

    .line 2507
    return-object v2

    .line 2503
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

    .line 2505
    .restart local v0    # "ident":J
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    throw v3
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .locals 3
    .param p1, "id"    # I

    .line 2512
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2513
    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskDescription()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2517
    .local v1, "tr":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    .line 2518
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2520
    .end local v1    # "tr":Lcom/android/server/wm/Task;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2521
    const/4 v0, 0x0

    return-object v0

    .line 2520
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

    .line 3671
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3674
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3675
    .local v0, "passedIconFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3676
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3677
    .local v1, "legitIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3678
    const-string v2, "_activity_icon_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3682
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3679
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

    .line 2848
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2849
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2850
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
    .param p2, "isLowResolution"    # Z

    .line 4678
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "getTaskSnapshot()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4681
    .local v0, "ident":J
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4681
    return-object v2

    .line 4683
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4684
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

    .line 2855
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 5039
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getUidState(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 6220
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 4449
    const-string v0, "getUriPermissionOwnerForActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4450
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4451
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4452
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 4456
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4453
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

    .line 4457
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

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    .line 986
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 987
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 989
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .locals 3

    .line 4516
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getWindowOrganizerController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4518
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-object v0
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 1611
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

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
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v4, 0x0

    const-string v5, ""

    move v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1006
    .local v0, "mode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1007
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1010
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

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method increaseConfigurationSeqLocked()I
    .locals 2

    .line 938
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 939
    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .locals 5
    .param p1, "intentFirewall"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intentController"    # Lcom/android/server/am/PendingIntentController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 912
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 913
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 914
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 915
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 916
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 917
    new-instance v1, Lcom/android/server/wm/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 918
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 919
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 921
    new-instance v2, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 923
    new-instance v1, Lcom/android/server/wm/LockTaskController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 924
    new-instance v1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 925
    new-instance v1, Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 926
    new-instance v1, Lcom/android/server/wm/VrController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1, v2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 927
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 928
    return-void
.end method

.method public installSystemProviders()V
    .locals 1

    .line 832
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    .line 833
    return-void
.end method

.method public invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4722
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4723
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4724
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4727
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 4728
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4729
    return-void

    .line 4725
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4728
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

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1743
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1744
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1748
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, -0x2710

    .line 1750
    invoke-static {v0, v0, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v10

    .line 1748
    move-object v5, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1752
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v4, p4}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v5

    .line 1754
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1755
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, p1, v1, v0, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    return v6

    .line 1757
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

    .line 1759
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

    .line 1760
    throw v4
.end method

.method isActivityStartsLoggingEnabled()Z
    .locals 1

    .line 5617
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .locals 5

    .line 4035
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4036
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 4037
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4041
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4042
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_1

    .line 4043
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4045
    :cond_1
    :try_start_1
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move v1, v4

    .line 4046
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v1, "userId":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4047
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(IZ)Z

    move-result v0

    return v0

    .line 4038
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4046
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

    .line 6304
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6305
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 6306
    const/4 v1, 0x0

    return v1

    .line 6308
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .locals 1

    .line 5621
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .locals 1

    .line 5906
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .locals 1

    .line 5898
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .locals 2

    .line 2841
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2842
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

    .line 2843
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isCrossUserAllowed(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3895
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3896
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3895
    :goto_1
    return v0
.end method

.method isDeviceOwner(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 6229
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

    .line 3865
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3867
    return v1

    .line 3870
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

    .line 3872
    .local v0, "allowed":Z
    if-nez v0, :cond_4

    .line 3873
    const-string v1, "android.permission.GET_TASKS"

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v1

    const-string v2, ": caller "

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_3

    .line 3880
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3881
    const/4 v0, 0x1

    .line 3882
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

    .line 3886
    :cond_2
    goto :goto_1

    .line 3885
    :catch_0
    move-exception v1

    .line 3888
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

    .line 3891
    :cond_4
    return v0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2116
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2117
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2118
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2121
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2119
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 2122
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

    .line 3299
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

.method isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4291
    if-eqz p1, :cond_0

    .line 4292
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4293
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4294
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4291
    :goto_0
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    .line 5048
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4077
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4078
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4079
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4080
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4082
    :cond_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4083
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

.method isSleepingLocked()Z
    .locals 1

    .line 5687
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .locals 1

    .line 5683
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
    .locals 5

    .line 2127
    const-string v0, "isTopActivityImmersive"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2130
    .local v1, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2134
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2135
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2136
    .end local v1    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3369
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3370
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

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

    .line 3371
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

    .line 6225
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAway(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 4179
    const-string v0, "keyguardGoingAway"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4182
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4183
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(I)V

    .line 4184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4187
    nop

    .line 4188
    return-void

    .line 4184
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

    .line 4186
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "flags":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4187
    throw v2
.end method

.method public synthetic lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "nextState"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2102
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2103
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

    .line 2105
    :cond_0
    if-eqz p1, :cond_1

    .line 2106
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_0

    .line 2108
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 2111
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$applyUpdateVrModeLocked$6$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4978
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4979
    return-void

    .line 4981
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4982
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v1

    .line 4983
    .local v1, "disableNonVrUi":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 4984
    if-eqz v1, :cond_1

    .line 4987
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->removeStacksInWindowingModes([I)V

    .line 4989
    .end local v1    # "disableNonVrUi":Z
    :cond_1
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

.method public synthetic lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4318
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4319
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4320
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip enterPictureInPictureMode, destroyed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4324
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 4325
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v1

    .line 4326
    .local v1, "aspectRatio":F
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 4327
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v4, "enterPictureInPictureMode"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4329
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4330
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4331
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4332
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-boolean v7, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 4335
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4336
    .end local v1    # "aspectRatio":F
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4337
    return-void

    .line 4336
    :catchall_0
    move-exception v1

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

    .line 3382
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3383
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3384
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3386
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-interface {v2, v3}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 3390
    sget-boolean v2, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3391
    invoke-static {v1}, Lcom/android/server/wm/OpAppLockerInjector;->showHint(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3395
    :cond_0
    goto :goto_0

    .line 3394
    :catch_0
    move-exception v2

    .line 3397
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3399
    return-void

    .line 3397
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

    .line 3663
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3664
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3663
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3666
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public synthetic lambda$postFinishBooting$7$ActivityTaskManagerService(ZZ)V
    .locals 2
    .param p1, "finishBooting"    # Z
    .param p2, "enableScreen"    # Z

    .line 5911
    if-eqz p1, :cond_0

    .line 5912
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5914
    :cond_0
    if-eqz p2, :cond_1

    .line 5915
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5917
    :cond_1
    return-void
.end method

.method public synthetic lambda$scheduleAppGcsLocked$8$ActivityTaskManagerService()V
    .locals 1

    .line 6083
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method public synthetic lambda$setLockScreenShown$2$ActivityTaskManagerService(Z)V
    .locals 2
    .param p1, "keyguardShowing"    # Z

    .line 3655
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3656
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3655
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3658
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

    .line 3801
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

    .line 6246
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 2469
    const-string v0, "moveActivityTaskToBack"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2470
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2473
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

    .line 2474
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2475
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_1

    .line 2476
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2476
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2479
    .end local v4    # "taskId":I
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2480
    nop

    .line 2481
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2482
    return v3

    .line 2479
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2480
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "nonRoot":Z
    throw v3

    .line 2481
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

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "moveStackToDisplay()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3714
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

    .line 3716
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/wm/RootWindowContainer;->moveStackToDisplay(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3718
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3719
    nop

    .line 3720
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3721
    return-void

    .line 3718
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3719
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    .end local p2    # "displayId":I
    throw v3

    .line 3720
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
    .locals 7
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "bOptions"    # Landroid/os/Bundle;

    .line 2686
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
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

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2690
    nop

    .line 2691
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    .line 2690
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2692
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2693
    return-void

    .line 2692
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V
    .locals 22
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 2697
    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 2698
    .local v20, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 2699
    .local v21, "callingUid":I
    move-object/from16 v15, p2

    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2700
    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "Task to front"

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 2702
    return-void

    .line 2704
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2705
    .local v1, "origId":J
    const/4 v0, 0x0

    .line 2706
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz p1, :cond_1

    .line 2707
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 2706
    :cond_1
    move-object v3, v0

    .line 2709
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "moveTaskToFront"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2711
    .local v5, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v14, -0x1

    const/4 v0, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v5

    move/from16 v11, v21

    move/from16 v12, v20

    move-object/from16 v13, p2

    move v15, v0

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2714
    return-void

    .line 2718
    :cond_2
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2719
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string v6, "ActivityTaskManager"

    if-nez v0, :cond_3

    .line 2720
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find task for id: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2744
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2722
    return-void

    .line 2724
    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2725
    const-string v4, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2744
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    return-void

    .line 2729
    :cond_4
    if-eqz v9, :cond_5

    .line 2730
    :try_start_3
    iget-object v6, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v9, v6}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    move-object v13, v6

    goto :goto_1

    .line 2731
    :cond_5
    move-object v13, v4

    :goto_1
    nop

    .line 2732
    .local v13, "realOptions":Landroid/app/ActivityOptions;
    iget-object v10, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v14, "moveTaskToFront"

    const/4 v15, 0x0

    move-object v11, v0

    move/from16 v12, p4

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2735
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2736
    .local v6, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_6

    .line 2740
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v6, v4, v10, v11}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2744
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "realOptions":Landroid/app/ActivityOptions;
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    nop

    .line 2746
    return-void

    .line 2744
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    throw v0
.end method

.method moveTaskToSplitScreenPrimaryTask(Lcom/android/server/wm/Task;Z)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .line 3014
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3015
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3016
    .local v1, "primarySplitTask":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 3020
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3021
    const v3, 0x7fffffff

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 3024
    :cond_0
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 3026
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    nop

    .line 3027
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    .line 3026
    invoke-virtual {v3, v4, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 3028
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 3029
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    .line 3028
    invoke-virtual {v3, v2, v4, p2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 3030
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 3031
    return-void

    .line 3017
    .end local v3    # "wct":Landroid/window/WindowContainerTransaction;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t enter split without associated organized task"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public moveTaskToStack(IIZ)V
    .locals 12
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .line 2923
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTaskToStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2925
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2927
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2928
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_0

    .line 2929
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

    .line 2948
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2930
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2933
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

    .line 2936
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 2937
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_3

    .line 2941
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2945
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "moveTaskToStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2948
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2949
    nop

    .line 2950
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2951
    return-void

    .line 2942
    .restart local v1    # "ident":J
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
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

    .line 2938
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "toTop":Z
    :cond_3
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

    .line 2948
    .end local v3    # "task":Lcom/android/server/wm/Task;
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

    .line 2949
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "toTop":Z
    throw v3

    .line 2950
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
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->moveTopStackActivityToPinnedStack(I)Z

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

    .line 4285
    nop

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
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 2431
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2432
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v10, v0

    .line 2433
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v10, :cond_0

    .line 2434
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 2436
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2439
    move-object/from16 v11, p2

    invoke-direct {v1, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v12

    .line 2440
    .local v12, "destGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v13, p4

    invoke-direct {v1, v13, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v14

    .line 2442
    .local v14, "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v15

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2443
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v12

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z

    move-result v0

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 2445
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2436
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "destGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v14    # "resultGrants":Lcom/android/server/uri/NeededUriGrants;
    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2253
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

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2255
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2256
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 2257
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2259
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2263
    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 2264
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

    .line 2270
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    .line 2271
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    .line 2273
    return-void

    .line 2259
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

    .line 3381
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3400
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3376
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 3377
    return-void
.end method

.method notifySingleTaskDisplayEmpty(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 6312
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySingleTaskDisplayEmpty(I)V

    .line 6313
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 5044
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 5045
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 932
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 933
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 935
    return-void

    .line 934
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
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IRequestFinishCallback;

    .line 2651
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2652
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2653
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2656
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2657
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 2659
    .local v3, "taskOrgController":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskOrganizerController;->handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2662
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2667
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2668
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 2669
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2670
    .end local v4    # "task":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 2672
    :cond_2
    :try_start_2
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2675
    goto :goto_0

    .line 2673
    :catch_0
    move-exception v4

    .line 2674
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "ActivityTaskManager"

    const-string v6, "Failed to invoke request finish callback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2677
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "taskOrgController":Lcom/android/server/wm/TaskOrganizerController;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2678
    return-void

    .line 2677
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

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 823
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->initPowerManagement()V

    .line 824
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 825
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 826
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 827
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 828
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 829
    return-void

    .line 828
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

    .line 3662
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3667
    return-void
.end method

.method onStartActivitySetDidAppSwitch()V
    .locals 2

    .line 4951
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_0

    .line 4957
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_0

    .line 4959
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4961
    :goto_0
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 799
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 800
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 801
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 802
    new-instance v2, Lcom/android/internal/app/AssistUtils;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 803
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v2}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 804
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 805
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->onSystemReady()V

    .line 806
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 809
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 815
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_0

    .line 816
    invoke-static {p0}, Lcom/android/server/wm/OpAppLockerInjector;->initOpAppLocker(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 819
    :cond_0
    return-void

    .line 806
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
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I

    .line 2142
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2143
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2144
    .local v1, "self":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2148
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2150
    .local v2, "origId":J
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2152
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 2156
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2157
    .end local v1    # "self":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2158
    return-void

    .line 2157
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

    .line 4197
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "positionTaskInStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4201
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

    .line 4203
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4204
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_4

    .line 4209
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 4211
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_3

    .line 4215
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4222
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-ne v4, v11, :cond_1

    .line 4224
    invoke-virtual {v11, v3, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(Lcom/android/server/wm/Task;I)V

    goto :goto_0

    .line 4227
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskInStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4231
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4232
    nop

    .line 4233
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4234
    return-void

    .line 4216
    .restart local v1    # "ident":J
    .restart local v3    # "task":Lcom/android/server/wm/Task;
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

    .line 4212
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

    .line 4205
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

    .line 4231
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "stackId":I
    .restart local p3    # "position":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4232
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "stackId":I
    .end local p3    # "position":I
    throw v3

    .line 4233
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

    .line 5910
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5918
    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 4847
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 4850
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4853
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4856
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4857
    nop

    .line 4858
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4859
    return-void

    .line 4856
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4857
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    throw v3

    .line 4858
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

    .line 4809
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4811
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4812
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4813
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4814
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4817
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4819
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4821
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4822
    nop

    .line 4823
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4824
    return-void

    .line 4821
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4822
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4823
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

    .line 4864
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4866
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4867
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4868
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4869
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 4870
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find display with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4873
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4875
    .local v2, "origId":J
    :try_start_2
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4877
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4878
    nop

    .line 4879
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4880
    return-void

    .line 4877
    .restart local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4878
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4879
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
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

    .line 3769
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "registerTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3772
    return-void
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3605
    .local v1, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3606
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 3609
    :cond_0
    const/4 v4, 0x1

    const-string v5, "app-req"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 3610
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3612
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3610
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3607
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 3612
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3607
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3612
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3613
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 3614
    .end local v1    # "origId":J
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

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "appInt"    # Landroid/app/IApplicationThread;

    .line 3619
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3622
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 3623
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    const-string v4, "low-mem"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->releaseSomeActivities(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3625
    .end local v3    # "app":Lcom/android/server/wm/WindowProcessController;
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3626
    nop

    .line 3627
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3628
    return-void

    .line 3625
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3626
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "appInt":Landroid/app/IApplicationThread;
    throw v3

    .line 3627
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

    .line 2405
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeAllVisibleRecentTasks()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2409
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

    .line 2411
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    nop

    .line 2413
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2414
    return-void

    .line 2411
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2412
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2413
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

    .line 3687
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3691
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3692
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_0

    .line 3693
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

    .line 3702
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3694
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3696
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3700
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3702
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    nop

    .line 3704
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3705
    return-void

    .line 3697
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

    .line 3702
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "stackId":I
    throw v3

    .line 3704
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

    .line 3039
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksInWindowingModes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3045
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeStacksInWindowingModes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3047
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3048
    nop

    .line 3049
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3050
    return-void

    .line 3047
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3048
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingModes":[I
    throw v3

    .line 3049
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

    .line 3054
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksWithActivityTypes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3060
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeStacksWithActivityTypes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3062
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3063
    nop

    .line 3064
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3065
    return-void

    .line 3062
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3063
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityTypes":[I
    throw v3

    .line 3064
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

    .line 2378
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeTask()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2384
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v8, v1

    .line 2393
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 2394
    .local v6, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "remove-task"

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->removeTaskById(Lcom/android/server/wm/ActivityStackSupervisor;IZZLjava/lang/String;Landroid/util/SparseArray;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2398
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2394
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2398
    .end local v6    # "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v1

    .line 2400
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

    .line 2277
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2278
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2279
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2282
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 2283
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2284
    return-void

    .line 2283
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

    .line 3406
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3407
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    monitor-enter v0

    .line 3408
    :try_start_0
    iput-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3409
    iput-object p3, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3410
    iput-object p4, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3411
    if-eqz p5, :cond_0

    .line 3412
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3414
    :cond_0
    if-eqz p3, :cond_1

    .line 3416
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 3417
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3418
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 3420
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3421
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3422
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez v1, :cond_2

    .line 3424
    monitor-exit v0

    return-void

    .line 3426
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3428
    const/4 v1, 0x0

    .line 3429
    .local v1, "sendReceiver":Landroid/app/IAssistDataReceiver;
    const/4 v2, 0x0

    .line 3430
    .local v2, "sendBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3431
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3432
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 3433
    .local v4, "exists":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3434
    if-nez v4, :cond_3

    .line 3436
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3439
    :cond_3
    :try_start_2
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    move-object v1, v5

    if-eqz v5, :cond_4

    .line 3441
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 3442
    const-string v5, "taskId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3443
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3442
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3444
    const-string v5, "activityId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3446
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3447
    const-string v5, "structure"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3448
    const-string v5, "content"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3449
    const-string v5, "receiverExtras"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3451
    .end local v4    # "exists":Z
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3452
    if-eqz v1, :cond_5

    .line 3454
    :try_start_3
    invoke-interface {v1, v2}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3456
    goto :goto_0

    .line 3455
    :catch_0
    move-exception v3

    .line 3457
    :goto_0
    return-void

    .line 3460
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3462
    .local v3, "ident":J
    :try_start_4
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.service.voice.VoiceInteractionService"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3465
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    goto :goto_1

    .line 3468
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3469
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3472
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "assist"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3475
    :try_start_5
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3478
    goto :goto_1

    .line 3476
    :catch_1
    move-exception v5

    .line 3477
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_6
    const-string v6, "ActivityTaskManager"

    const-string v7, "No activity to handle assist action."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3481
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3482
    nop

    .line 3483
    return-void

    .line 3481
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3482
    throw v5

    .line 3451
    .end local v3    # "ident":J
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 3426
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

    .line 4239
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4239
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4243
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4244
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 4248
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations([I[I[I)V

    .line 4250
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4251
    return-void

    .line 4245
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

    .line 4250
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

    .line 3785
    nop

    .line 3786
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3785
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

    .line 3793
    nop

    .line 3794
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3793
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

.method public requestPictureInPictureMode(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5091
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "requestPictureInPictureMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5093
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5095
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5096
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5097
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 5098
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5124
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5098
    return-void

    .line 5101
    :cond_0
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5105
    const-string v4, "requestPictureInPictureMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5107
    .local v4, "canEnterPictureInPicture":Z
    if-eqz v4, :cond_1

    .line 5113
    :try_start_3
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5114
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 5113
    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 5116
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {}, Landroid/app/servertransaction/EnterPipRequestedItem;->obtain()Landroid/app/servertransaction/EnterPipRequestedItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 5117
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5121
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_0

    .line 5118
    :catch_0
    move-exception v5

    .line 5119
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send enter pip requested item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5120
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5119
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5122
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "canEnterPictureInPicture":Z
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5125
    nop

    .line 5126
    return-void

    .line 5108
    .restart local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "canEnterPictureInPicture":Z
    :cond_1
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Requested PIP on an activity that doesn\'t support it"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 5102
    .end local v4    # "canEnterPictureInPicture":Z
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Activity is already in PIP mode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 5122
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5124
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5125
    throw v2
.end method

.method public requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 7
    .param p1, "delegatorToken"    # Landroid/os/IBinder;

    .line 1462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1463
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 1467
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1468
    .local v1, "permissionToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1469
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1472
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;

    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1474
    .local v2, "expireMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v4, 0x92f90

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1476
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

    invoke-static {v3, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1478
    .local v3, "forgetMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v5, 0x1b7f10

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1480
    return-object v1

    .line 1470
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

    .line 1464
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
    .locals 12
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 4465
    move-object v1, p0

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "resizeDockedStack()"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4468
    .local v2, "ident":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4469
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4470
    .local v0, "tc":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 4471
    .local v5, "primary":Lcom/android/server/wm/Task;
    sget-object v6, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$l_aPxHBjKyHZWF7sw_vGD5ZvoR4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$l_aPxHBjKyHZWF7sw_vGD5ZvoR4;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 4473
    .local v6, "secondary":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_6

    if-nez v6, :cond_0

    goto :goto_3

    .line 4476
    :cond_0
    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4478
    .local v7, "wct":Landroid/window/WindowContainerTransaction;
    if-eqz p3, :cond_1

    move-object v8, p3

    goto :goto_0

    .line 4479
    :cond_1
    if-eqz p2, :cond_2

    move-object v8, p2

    goto :goto_0

    .line 4480
    :cond_2
    move-object v8, p1

    :goto_0
    nop

    .line 4481
    .local v8, "primaryRect":Landroid/graphics/Rect;
    iget-object v9, v5, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 4482
    if-eqz p5, :cond_3

    move-object/from16 v9, p5

    goto :goto_1

    .line 4483
    :cond_3
    move-object/from16 v9, p4

    :goto_1
    nop

    .line 4484
    .local v9, "otherRect":Landroid/graphics/Rect;
    if-nez v9, :cond_5

    .line 4486
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v9, v10

    .line 4487
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v10, v11, :cond_4

    .line 4488
    iget v10, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 4490
    :cond_4
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x6

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 4493
    :cond_5
    :goto_2
    iget-object v10, v6, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 4494
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 4495
    .end local v0    # "tc":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "primary":Lcom/android/server/wm/Task;
    .end local v6    # "secondary":Lcom/android/server/wm/Task;
    .end local v7    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v8    # "primaryRect":Landroid/graphics/Rect;
    .end local v9    # "otherRect":Landroid/graphics/Rect;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4497
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4498
    nop

    .line 4499
    return-void

    .line 4474
    .restart local v0    # "tc":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "primary":Lcom/android/server/wm/Task;
    .restart local v6    # "secondary":Lcom/android/server/wm/Task;
    :cond_6
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4497
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4474
    return-void

    .line 4495
    .end local v0    # "tc":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "primary":Lcom/android/server/wm/Task;
    .end local v6    # "secondary":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "dockedBounds":Landroid/graphics/Rect;
    .end local p2    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .end local p3    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .end local p4    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .end local p5    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4497
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "dockedBounds":Landroid/graphics/Rect;
    .restart local p2    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .restart local p3    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .restart local p4    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .restart local p5    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4498
    throw v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 3573
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "resizeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3576
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3577
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3579
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_0

    .line 3580
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resizeTask: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3596
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3581
    return v4

    .line 3583
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3584
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resizeTask not allowed on task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3596
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3585
    return v4

    .line 3589
    :cond_1
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 3593
    .local v4, "preserveWindow":Z
    :cond_2
    :try_start_3
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    move-result v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3596
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3593
    return v5

    .line 3594
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "preserveWindow":Z
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
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "resizeMode":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3596
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "resizeMode":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3597
    throw v2
.end method

.method public restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 2361
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "restartActivityProcess()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2364
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2365
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2366
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_0

    .line 2367
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2372
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    return-void

    .line 2369
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 2370
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    nop

    .line 2374
    return-void

    .line 2370
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

    .line 2372
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    throw v2
.end method

.method public resumeAppSwitches()V
    .locals 3

    .line 4937
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "resumeAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4938
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4942
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4944
    return-void

    .line 4943
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

    .line 836
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 838
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

    .line 841
    .local v5, "freeformWindowManagement":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 842
    .local v6, "supportsMultiWindow":Z
    if-eqz v6, :cond_2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 843
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

    .line 844
    .local v7, "supportsPictureInPicture":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 845
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v8

    .line 846
    .local v8, "supportsSplitScreenMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 847
    const-string v9, "android.software.activities_on_secondary_displays"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 848
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

    .line 849
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

    .line 851
    .local v11, "forceResizable":Z
    const-string v0, "enable_sizecompat_freeform"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    move v12, v0

    .line 855
    .local v12, "sizeCompatFreeform":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 857
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object v13, v0

    .line 858
    .local v13, "configuration":Landroid/content/res/Configuration;
    invoke-static {v2, v13}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 859
    if-eqz v10, :cond_6

    .line 861
    iget-object v0, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 864
    :cond_6
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 865
    iput-boolean v11, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 866
    iput-boolean v12, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSizeCompatFreeform:Z

    .line 867
    if-nez v5, :cond_8

    if-nez v8, :cond_8

    if-nez v7, :cond_8

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    move v0, v4

    goto :goto_7

    :cond_8
    :goto_6
    move v0, v3

    .line 871
    .local v0, "multiWindowFormEnabled":Z
    :goto_7
    if-nez v6, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    .line 872
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 873
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 874
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 875
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 876
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_8

    .line 878
    :cond_a
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 879
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 880
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 881
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 882
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 884
    :goto_8
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 887
    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 889
    .local v3, "globalConfig":Landroid/content/res/Configuration;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_b

    const-string v4, "ActivityTaskManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "multiWindowFormEnabled":Z
    .local v16, "multiWindowFormEnabled":Z
    const-string v0, "Initial config: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v16    # "multiWindowFormEnabled":Z
    .restart local v0    # "multiWindowFormEnabled":Z
    :cond_b
    move/from16 v16, v0

    .line 892
    .end local v0    # "multiWindowFormEnabled":Z
    .restart local v16    # "multiWindowFormEnabled":Z
    :goto_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 893
    .local v0, "res":Landroid/content/res/Resources;
    const v4, 0x1050002

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 895
    const v4, 0x1050001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 897
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v3    # "globalConfig":Landroid/content/res/Configuration;
    .end local v16    # "multiWindowFormEnabled":Z
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 898
    return-void

    .line 897
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

    .line 6083
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 6084
    return-void
.end method

.method public setAMService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 7777
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7778
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/app/IActivityController;
    .param p2, "imAMonkey"    # Z

    .line 2831
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2834
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2835
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2836
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2838
    return-void

    .line 2837
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

    .line 5902
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5903
    return-void
.end method

.method setBooting(Z)V
    .locals 1
    .param p1, "booting"    # Z

    .line 5894
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5895
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 6233
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 6234
    return-void
.end method

.method public setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "disable"    # Z

    .line 4704
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4705
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4706
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4707
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisablePreviewScreenshots: Unable to find activity for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4711
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4713
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setDisablePreviewScreenshots(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4715
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4716
    nop

    .line 4717
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4718
    return-void

    .line 4715
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4716
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "disable":Z
    throw v4

    .line 4717
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

    .line 5072
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setDisplayToSingleTaskInstance"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5076
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5077
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5078
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_0

    .line 5079
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setDisplayToSingleTaskInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5082
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5083
    nop

    .line 5084
    return-void

    .line 5082
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5083
    throw v2
.end method

.method public setFocusedStack(I)V
    .locals 7
    .param p1, "stackId"    # I

    .line 2317
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
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

    .line 2319
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2321
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2322
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2323
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_1

    .line 2324
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFocusedStack: No stack with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2333
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2325
    return-void

    .line 2327
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2328
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    const-string v5, "setFocusedStack"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2329
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2331
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

    .line 2333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    nop

    .line 2335
    return-void

    .line 2331
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

    .line 2333
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "stackId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    throw v2
.end method

.method public setFocusedTask(I)V
    .locals 6
    .param p1, "taskId"    # I

    .line 2339
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
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

    .line 2341
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2343
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2344
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2346
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_1

    .line 2347
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2355
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2347
    return-void

    .line 2349
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2350
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    const-string v5, "setFocusedTask"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2351
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2353
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2356
    nop

    .line 2357
    return-void

    .line 2353
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

    .line 2355
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2356
    throw v2
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 2175
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2180
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2181
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-nez v2, :cond_1

    .line 2182
    const-string v3, "ActivityTaskManager"

    const-string v4, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2185
    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2186
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 2187
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2188
    return-void

    .line 2187
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
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

    .line 5921
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5922
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5924
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5922
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5925
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5926
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z

    .line 2080
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2081
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2082
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    .line 2085
    iput-boolean p2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 2088
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2089
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

    .line 2090
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2092
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2093
    return-void

    .line 2083
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "immersive":Z
    throw v2

    .line 2092
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

    .line 4777
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4778
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4779
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4782
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4784
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4786
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4787
    nop

    .line 4788
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4789
    return-void

    .line 4786
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4787
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "inheritShowWhenLocked":Z
    throw v4

    .line 4788
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

.method public setLockScreenShown(ZZ)V
    .locals 6
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 3632
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3638
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3640
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_0

    .line 3641
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3642
    sget-object v3, Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3644
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3642
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3645
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3648
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3650
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3651
    nop

    .line 3652
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3654
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3659
    return-void

    .line 3650
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3651
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "keyguardShowing":Z
    .end local p2    # "aodShowing":Z
    throw v3

    .line 3652
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

    .line 3634
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

    .line 5020
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5022
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5023
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 5024
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5025
    return-void

    .line 5024
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

    .line 5003
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5006
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 5007
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5008
    return-void

    .line 5007
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

    .line 4907
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4916
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4917
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4918
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4919
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4920
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4921
    .end local v1    # "pid":I
    .end local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4922
    return-void

    .line 4921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4909
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4913
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 4362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4364
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4365
    const-string v3, "setPictureInPictureParams"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4369
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 4370
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4374
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4375
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4376
    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v5

    .line 4375
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4377
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4379
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4380
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4382
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4383
    nop

    .line 4384
    return-void

    .line 4380
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

    .line 4382
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/app/PictureInPictureParams;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4383
    throw v2
.end method

.method protected setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .locals 1
    .param p1, "recentTasks"    # Lcom/android/server/wm/RecentTasks;

    .line 1015
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1016
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1017
    return-void
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .line 2047
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2048
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2049
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 2050
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2055
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

    .line 2056
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2055
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2062
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2064
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    nop

    .line 2066
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2067
    return-void

    .line 2064
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "requestedOrientation":I
    throw v4

    .line 2066
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
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5692
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5693
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 5694
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_1

    .line 5696
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_0

    .line 5697
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5698
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5699
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5700
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 5701
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5703
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3

    .line 5704
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5705
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_0

    .line 5708
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_0

    .line 5711
    :cond_2
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5716
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4

    .line 5717
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_2

    .line 5719
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5721
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    .line 5724
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5725
    .local v1, "lastResumedActivityTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_5

    .line 5727
    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .local v4, "session":Landroid/service/voice/IVoiceInteractionSession;
    goto :goto_1

    .line 5729
    .end local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 5732
    .restart local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :goto_1
    if-eqz v4, :cond_6

    .line 5737
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5742
    .end local v1    # "lastResumedActivityTask":Lcom/android/server/wm/Task;
    .end local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v1, v4, :cond_7

    .line 5743
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 5745
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_8
    move-object v1, v2

    .line 5747
    .local v1, "prevTask":Lcom/android/server/wm/Task;
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5748
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5750
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5754
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lcom/android/server/wm/OpScreenModeServiceInjector;->setRefreshRate(Landroid/os/IBinder;I)V

    .line 5757
    invoke-static {p1}, Lcom/android/server/wm/OpQuickReplyInjector;->setResumedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 5762
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5767
    new-array v2, v3, [I

    const/16 v5, 0x49

    const/4 v6, 0x0

    aput v5, v2, v6

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v3, [I

    const/16 v5, 0xb7

    aput v5, v2, v6

    .line 5768
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5769
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v5, v7}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 5773
    :cond_a
    if-eqz v1, :cond_b

    if-eq v0, v1, :cond_d

    .line 5774
    :cond_b
    if-eqz v1, :cond_c

    .line 5775
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v5, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 5777
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v5, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 5781
    :cond_d
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_e

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_e

    .line 5782
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityManagerService;->setFront(Ljava/lang/String;I)V

    .line 5785
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5786
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5789
    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5790
    :goto_3
    if-nez p1, :cond_10

    const-string v2, "NULL"

    goto :goto_4

    :cond_10
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5788
    :goto_4
    invoke-static {v4, v2, p2}, Lcom/android/server/wm/EventLogTags;->writeWmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5792
    return-void
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWhenLocked"    # Z

    .line 4761
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4762
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4763
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4764
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4766
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4768
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4770
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4771
    nop

    .line 4772
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4773
    return-void

    .line 4770
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4771
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "showWhenLocked":Z
    throw v4

    .line 4772
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

    .line 4503
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setSplitScreenResizing()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4506
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4507
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setSplitScreenResizing(Z)V

    .line 4508
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    nop

    .line 4512
    return-void

    .line 4508
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

    .line 4510
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "resizing":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    throw v2
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3311
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3312
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3313
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 3314
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3316
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3317
    return-void

    .line 3316
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

    .line 3560
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3561
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3563
    .local v1, "task":Lcom/android/server/wm/Task;
    if-nez v1, :cond_0

    .line 3564
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

    .line 3565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3567
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->setResizeMode(I)V

    .line 3568
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3569
    return-void

    .line 3568
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingMode(IIZ)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "toTop"    # Z

    .line 2526
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 2527
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreenPrimary(IZ)Z

    move-result v0

    return v0

    .line 2529
    :cond_0
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setTaskWindowingMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2533
    .local v1, "ident":J
    :try_start_1
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2534
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreen(IIZ)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2567
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2534
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2536
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2538
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_2

    .line 2539
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTaskWindowingMode: No task for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2540
    nop

    .line 2567
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2540
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2543
    :cond_2
    :try_start_5
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTaskWindowingMode: moving task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to windowingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " toTop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2552
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2553
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_4

    .line 2554
    const-string v6, "setTaskWindowingMode"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2557
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 2558
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    goto :goto_0

    .line 2561
    :cond_5
    invoke-virtual {v5, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 2562
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4, v7, v7}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2565
    :goto_0
    nop

    .line 2567
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2565
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 2547
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    :try_start_7
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
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2567
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_0
    move-exception v3

    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2568
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "toTop":Z
    throw v3

    .line 2569
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IZ)Z
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "toTop"    # Z

    .line 2962
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setTaskWindowingModeSplitScreenPrimary()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2967
    .local v1, "ident":J
    const/4 v3, 0x3

    :try_start_1
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreen(IIZ)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2970
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2967
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2970
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2971
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "toTop":Z
    throw v3

    .line 2972
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "toTop":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "turnScreenOn"    # Z

    .line 4793
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4794
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4795
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4796
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4798
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4800
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4802
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4803
    nop

    .line 4804
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4805
    return-void

    .line 4802
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4803
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "turnScreenOn":Z
    throw v4

    .line 4804
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

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 980
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 982
    return-void

    .line 981
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

    .line 4133
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4134
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4135
    if-eqz p2, :cond_0

    .line 4136
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 4138
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4141
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4142
    return-void

    .line 4141
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

    .line 4534
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4536
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 4539
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4540
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4541
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4543
    if-eqz v2, :cond_3

    .line 4548
    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v1

    move v3, v1

    .local v3, "err":I
    if-eqz v1, :cond_0

    .line 4550
    return v3

    .line 4554
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4556
    .local v4, "callingId":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4557
    if-eqz p2, :cond_1

    move-object v6, p3

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iput-object v6, v2, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 4560
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4561
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4563
    :cond_2
    const/4 v6, 0x0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4566
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4563
    return v6

    .line 4564
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

    .line 4566
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

    .line 4567
    throw v1

    .line 4544
    .end local v3    # "err":I
    .end local v4    # "callingId":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4541
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

    .line 4897
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4898
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4899
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4900
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4901
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4902
    .end local v1    # "pid":I
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4903
    return-void

    .line 4902
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
    .locals 3
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 954
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 955
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 958
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 960
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 961
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 962
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 963
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 964
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 966
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 967
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 971
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_0

    .line 972
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 975
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 976
    return-void

    .line 975
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

    .line 4965
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 2418
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2419
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2420
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2421
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/ActivityStack;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2423
    .end local v1    # "srec":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2424
    const/4 v0, 0x0

    return v0

    .line 2423
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

    .line 4052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4054
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4055
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4056
    .local v3, "caller":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 4057
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-eq v4, v3, :cond_0

    .line 4058
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

    .line 4060
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4071
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4060
    return v5

    .line 4062
    :cond_0
    :try_start_2
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_1

    .line 4063
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

    .line 4065
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4071
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    return v5

    .line 4067
    .end local v3    # "caller":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4068
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4068
    return v2

    .line 4067
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

    .line 4071
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "args":Landroid/os/Bundle;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4072
    throw v2
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4168
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4169
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4170
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 4174
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4175
    return-void

    .line 4174
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 19
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1138
    const-string v16, "startActivities"

    .line 1139
    .local v16, "reason":Ljava/lang/String;
    const-string v1, "startActivities"

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p8

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v17

    .line 1142
    .end local p8    # "userId":I
    .local v17, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1144
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v11

    .line 1142
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v13, "startActivities"

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v12, v17

    move/from16 v15, v18

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    return v1
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 1128
    nop

    .line 1130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .locals 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1412
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1413
    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 1414
    .local v2, "res":Landroid/app/WaitResult;
    const-string v3, "startActivityAndWait"

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1415
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move/from16 v6, p12

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    .line 1418
    .end local p12    # "userId":I
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1419
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1420
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1421
    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1422
    move-object/from16 v8, p5

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1423
    move-object/from16 v9, p6

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1424
    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1425
    move/from16 v11, p8

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1426
    move/from16 v12, p9

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1427
    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1428
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1429
    move-object/from16 v14, p10

    invoke-virtual {v3, v14}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1430
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1431
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1432
    return-object v2
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

    .line 1501
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    move/from16 v4, p12

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1502
    if-eqz v2, :cond_d

    .line 1506
    if-eqz v3, :cond_1

    .line 1509
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "android.permission.START_ACTIVITY_AS_CALLER"

    const-string v7, "startActivityAsCaller"

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1515
    .local v0, "sourceToken":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 1517
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1518
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

    .line 1521
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

    .line 1527
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

    .line 1530
    .restart local v0    # "sourceToken":Landroid/os/IBinder;
    :cond_2
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/RootWindowContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1531
    .local v6, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_c

    .line 1534
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_b

    .line 1540
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1545
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_4

    .line 1548
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v8, :cond_3

    goto :goto_0

    .line 1549
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

    .line 1555
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

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1560
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 1561
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

    .line 1557
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

    .line 1565
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

    .line 1566
    .local v7, "targetUid":I
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1567
    .local v8, "targetPackage":Ljava/lang/String;
    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1568
    .local v9, "targetFeatureId":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v10

    .line 1569
    .end local v0    # "sourceToken":Landroid/os/IBinder;
    .local v10, "isResolver":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1571
    const/16 v0, -0x2710

    move/from16 v11, p13

    if-ne v11, v0, :cond_8

    .line 1572
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v11, v0

    .line 1577
    .end local p13    # "userId":I
    .local v11, "userId":I
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v5, "startActivityAsCaller"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v12, p3

    :try_start_2
    invoke-virtual {v0, v12, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1578
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1579
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1580
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1581
    move-object/from16 v13, p4

    :try_start_3
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1582
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1583
    move-object/from16 v14, p6

    :try_start_4
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1584
    move/from16 v15, p7

    :try_start_5
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1585
    move/from16 v5, p8

    :try_start_6
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1586
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1587
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1588
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1589
    if-eqz v10, :cond_9

    const/16 v16, 0x0

    move/from16 v1, v16

    goto :goto_2

    :cond_9
    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1592
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1593
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1577
    return v0

    .line 1594
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v12, p3

    :goto_3
    move-object/from16 v13, p4

    :goto_4
    move-object/from16 v14, p6

    :goto_5
    move/from16 v15, p7

    :goto_6
    move/from16 v5, p8

    .line 1606
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_7
    throw v0

    .line 1541
    .end local v7    # "targetUid":I
    .end local v8    # "targetPackage":Ljava/lang/String;
    .end local v9    # "targetFeatureId":Ljava/lang/String;
    .end local v10    # "isResolver":Z
    .end local v11    # "userId":I
    .local v0, "sourceToken":Landroid/os/IBinder;
    .restart local p13    # "userId":I
    :cond_a
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p13

    :try_start_7
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

    .line 1535
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
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p13

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

    .line 1532
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
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p13

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

    .line 1503
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
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p13

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

    .line 1569
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

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v11, p13

    :goto_8
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1153
    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 1698
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v1, "startActivityFromRecents()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1706
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1707
    .local v2, "callingUid":I
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v3

    .line 1708
    .local v3, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1710
    .local v4, "origId":J
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1713
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    .line 1715
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1722
    invoke-static {v6}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1715
    return v0

    .line 1717
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v3    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v4    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "bOptions":Landroid/os/Bundle;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1719
    .restart local v1    # "callingPid":I
    .restart local v2    # "callingUid":I
    .restart local v3    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v4    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bOptions":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1722
    invoke-static {v6}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1724
    throw v0
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

    .line 1201
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "startActivityIntentSender"

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1203
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_1
    :goto_0
    instance-of v0, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_3

    .line 1211
    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    .line 1213
    .local v16, "pir":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1217
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1219
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 1221
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1222
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

    .line 1221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1208
    .end local v16    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad PendingIntent object"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "config"    # Landroid/content/res/Configuration;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1440
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1441
    const-string v0, "startActivityWithConfig"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1446
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1447
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1449
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1450
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1451
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1452
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1453
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1454
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1455
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1456
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1445
    return v0
.end method

.method public startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v0, "startAssistantActivity"

    invoke-virtual {p0, p3, p4, p8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1651
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1652
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1654
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1655
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1656
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1657
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1658
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1650
    return v0
.end method

.method public startDreamActivity(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1359
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsDream(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1363
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    const v1, 0x103040c

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1364
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1365
    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1366
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 1367
    const/4 v2, 0x3

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1368
    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1369
    const/4 v2, -0x1

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1370
    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1371
    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1373
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1374
    .local v2, "options":Landroid/app/ActivityOptions;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 1376
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1377
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 1379
    .local v4, "process":Lcom/android/server/wm/WindowProcessController;
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1380
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1381
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1382
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v5, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/dream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1386
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1388
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1390
    .local v7, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v9

    const-string v10, "dream"

    invoke-virtual {v9, p1, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1391
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1392
    invoke-virtual {v9, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1393
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1394
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1398
    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1399
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->execute()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    nop

    .line 1402
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1400
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1402
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1403
    nop

    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "intent":Landroid/content/Intent;
    throw v1

    .line 1404
    .end local v4    # "process":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v7    # "origId":J
    .restart local v0    # "a":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "options":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 4572
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4574
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4575
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 4578
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4583
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz v2, :cond_1

    .line 4584
    const-string v2, "ActivityTaskManager"

    const-string v3, "Pending start of voice interaction already."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4587
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 4588
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4589
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4590
    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4591
    return-void

    .line 4580
    .restart local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_0
    :try_start_2
    const-string v2, "ActivityTaskManager"

    const-string v3, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4576
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only focused activity can call startVoiceInteraction"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callingActivity":Landroid/os/IBinder;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v2

    .line 4588
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

    .line 3159
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3160
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3161
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 3162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/Task;Z)V

    .line 3165
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3166
    return-void

    .line 3165
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

    .line 1230
    move-object/from16 v1, p2

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1235
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1236
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1237
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 1238
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1239
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1241
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1243
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1244
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1246
    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 1248
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

    .line 1250
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1252
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

    .line 1254
    .local v9, "debug":Z
    const/4 v10, 0x0

    .line 1257
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const v12, 0x10400

    .line 1260
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1257
    invoke-interface {v0, v1, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1263
    .local v0, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_2

    :cond_5
    move v11, v6

    .line 1264
    .local v11, "N":I
    :goto_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v11, :cond_9

    .line 1265
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1266
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

    .line 1267
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1270
    add-int/2addr v12, v8

    .line 1271
    if-ge v12, v11, :cond_6

    .line 1272
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v10, v14

    .line 1274
    :cond_6
    if-eqz v9, :cond_9

    .line 1275
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

    .line 1277
    const-string v7, "ActivityTaskManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Next matching activity: next is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_7

    .line 1278
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

    .line 1277
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 1264
    .end local v13    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1284
    .end local v0    # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_9
    :goto_5
    goto :goto_6

    .line 1283
    :catch_0
    move-exception v0

    .line 1286
    :goto_6
    if-nez v10, :cond_b

    .line 1288
    :try_start_5
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1289
    if-eqz v9, :cond_a

    const-string v0, "ActivityTaskManager"

    const-string v7, "Next matching activity: nothing found"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_a
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1293
    :cond_b
    :try_start_6
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1295
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, -0x1e000001

    and-int/2addr v0, v7

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1305
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1306
    .local v0, "wasFinishing":Z
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1309
    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1310
    .local v7, "resultTo":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1311
    .local v8, "resultWho":Ljava/lang/String;
    iget v11, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1312
    .local v11, "requestCode":I
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1313
    if-eqz v7, :cond_c

    .line 1314
    invoke-virtual {v7, v5, v8, v11}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1317
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1319
    .local v13, "origId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v15

    const-string v12, "startNextMatchingActivity"

    .line 1320
    invoke-virtual {v15, v1, v12}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1321
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1322
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1323
    invoke-virtual {v12, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1324
    if-eqz v7, :cond_d

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1325
    invoke-virtual {v12, v8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1326
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1327
    const/4 v15, -0x1

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1328
    invoke-virtual {v12, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1329
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1330
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1331
    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1332
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1333
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1334
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v6

    .line 1335
    .local v6, "res":I
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1337
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1338
    if-eqz v6, :cond_e

    .line 1339
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return v4

    .line 1341
    :cond_e
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x1

    return v4

    .line 1342
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

.method startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .locals 11
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "knownToBeDead"    # Z
    .param p3, "isTop"    # Z
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 5878
    const-wide/16 v0, 0x20

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchingStartProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5884
    :cond_0
    sget-object v3, Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5885
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5886
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 5884
    move-object v9, p4

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5887
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5889
    nop

    .end local v2    # "m":Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5890
    nop

    .line 5891
    return-void

    .line 5889
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5890
    throw v2
.end method

.method public startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "unused"    # Landroid/app/IAssistDataReceiver;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 1670
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "startRecentsActivity()"

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1672
    .local v13, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1673
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1675
    .local v15, "origId":J
    :try_start_0
    iget-object v6, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1676
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1677
    .local v7, "recentsComponent":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentFeatureId()Ljava/lang/String;

    move-result-object v8

    .line 1678
    .local v8, "recentsFeatureId":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v9

    .line 1679
    .local v9, "recentsUid":I
    invoke-virtual {v11, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1682
    .local v10, "caller":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V

    .line 1685
    .local v0, "anim":Lcom/android/server/wm/RecentsAnimation;
    if-nez v12, :cond_0

    .line 1686
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V

    goto :goto_0

    .line 1688
    :cond_0
    invoke-virtual {v0, v12}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V

    .line 1690
    .end local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7    # "recentsComponent":Landroid/content/ComponentName;
    .end local v8    # "recentsFeatureId":Ljava/lang/String;
    .end local v9    # "recentsUid":I
    .end local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :goto_0
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1692
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    nop

    .line 1694
    return-void

    .line 1690
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    :goto_1
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .end local v15    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "unused":Landroid/app/IAssistDataReceiver;
    .end local p3    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "unused":Landroid/app/IAssistDataReceiver;
    .restart local p3    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1692
    :catchall_2
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 3170
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "startSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3177
    .local v0, "ident":J
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 3181
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3182
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3184
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_0

    .line 3185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3193
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3185
    return-void

    .line 3189
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    const-string v6, "startSystemLockTaskMode"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3190
    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/Task;Z)V

    .line 3191
    .end local v4    # "task":Lcom/android/server/wm/Task;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3194
    nop

    .line 3195
    return-void

    .line 3191
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

    .line 3193
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3194
    throw v2
.end method

.method public startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1620
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    .line 1625
    const-string v0, "startVoiceActivity"

    invoke-virtual {p0, p3, p4, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1628
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1629
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1630
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1631
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1632
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1633
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1634
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1635
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1636
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1637
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1638
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1639
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1627
    return v0

    .line 1623
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null session or interactor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAppSwitches()V
    .locals 5

    .line 4926
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "stopAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4927
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4930
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4931
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStartController;->schedulePendingActivityLaunches(J)V

    .line 4932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4933
    return-void

    .line 4932
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

    .line 4595
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4596
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 4597
    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3202
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 3204
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3205
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3206
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_0

    .line 3207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3209
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/Task;Z)V

    .line 3210
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3211
    return-void

    .line 3210
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

    .line 3222
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->notifyLockTaskMode(Z)V

    .line 3224
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "stopSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/Task;Z)V

    .line 3226
    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .locals 1

    .line 4601
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4602
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 4601
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

    .line 4255
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4256
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4257
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 4258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4259
    return-void

    .line 4258
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

    .line 3725
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3728
    .local v1, "ident":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3729
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_7

    .line 3735
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3736
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_6

    .line 3741
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 3742
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 3743
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 3747
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3748
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_2

    .line 3749
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSizeCompatFreeform:Z

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 3750
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Size-compat windows are currently notfreeform-enabled"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 3752
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3756
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_2

    .line 3758
    :cond_5
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3761
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3762
    nop

    .line 3763
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3764
    return-void

    .line 3737
    .restart local v1    # "ident":J
    .restart local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: the activity doesn\'t have a stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v5

    .line 3730
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_7
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

    .line 3761
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3762
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 3763
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

    .line 2634
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2639
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2640
    .local v3, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    .line 2641
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->unhandledBackLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2644
    .end local v3    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2645
    nop

    .line 2646
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2647
    return-void

    .line 2644
    .restart local v1    # "origId":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2645
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2646
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

.method public unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4828
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "unregisterRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4830
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4831
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4832
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_0

    .line 4833
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4835
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4837
    .local v2, "origId":J
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->unregisterRemoteAnimations()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4839
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4840
    nop

    .line 4841
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4842
    return-void

    .line 4839
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "origId":J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4840
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 4841
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "origId":J
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

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 3777
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "unregisterTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3780
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 10
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "event"    # I

    .line 5860
    const/4 v0, 0x0

    .line 5861
    .local v0, "taskRoot":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5862
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    .line 5863
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5864
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 5865
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5869
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    sget-object v3, Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5871
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 5869
    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5872
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5873
    return-void
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6
    .param p1, "component"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resumed"    # Z

    .line 5853
    sget-object v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5854
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5855
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5853
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5856
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5857
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 13
    .param p1, "values"    # Landroid/content/res/Configuration;

    .line 4607
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4610
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4611
    const-string v1, "ActivityTaskManager"

    const-string v3, "Skip updateConfiguration because mWindowManager isn\'t set"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4615
    :cond_0
    if-nez p1, :cond_1

    .line 4617
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    move-object p1, v1

    .line 4620
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4622
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4620
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4624
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v11, v3

    .line 4626
    .local v11, "origId":J
    if-eqz p1, :cond_2

    .line 4627
    :try_start_2
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4629
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x2710

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4632
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 4634
    :cond_3
    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4632
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4634
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4635
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    throw v1

    .line 4636
    .end local v11    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z

    .line 5360
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

    .line 5366
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

    .line 5401
    const/4 v0, 0x0

    .line 5402
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5404
    .local v1, "kept":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5406
    if-eqz p1, :cond_0

    .line 5407
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    .line 5411
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 5413
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5414
    nop

    .line 5416
    if-eqz p7, :cond_2

    .line 5417
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5418
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5420
    :cond_2
    return v1

    .line 5413
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5414
    throw v2
.end method

.method updateCpuStats()V
    .locals 3

    .line 5849
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5850
    return-void
.end method

.method updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I
    .locals 26
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "initLocale"    # Z
    .param p3, "persistent"    # Z
    .param p4, "userId"    # I
    .param p5, "deferResume"    # Z

    .line 5427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5428
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5430
    .local v3, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5431
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v5

    .line 5435
    .local v5, "changes":I
    invoke-static {v5}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->clearCacheWhenOnConfigurationChange(I)V

    .line 5438
    if-nez v5, :cond_0

    .line 5443
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;Z)I

    .line 5444
    return v4

    .line 5447
    :cond_0
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v7, "ActivityTaskManager"

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating global configuration to: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    :cond_2
    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeConfigurationChanged(I)V

    .line 5450
    const/16 v8, 0x42

    iget v9, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v10, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v11, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v12, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v13, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v14, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v15, v1, Landroid/content/res/Configuration;->mcc:I

    iget v6, v1, Landroid/content/res/Configuration;->mnc:I

    move/from16 v16, v6

    iget v6, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v17, v6

    iget v6, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v18, v6

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v6

    iget v6, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v20, v6

    iget v6, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v21, v6

    iget v6, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v22, v6

    iget v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v23, v6

    iget v6, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v24, v6

    iget v6, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v25, v6

    invoke-static/range {v8 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    .line 5470
    const/4 v6, 0x1

    if-nez p2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v8, :cond_5

    .line 5471
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    .line 5472
    .local v8, "locales":Landroid/os/LocaleList;
    const/4 v9, 0x0

    .line 5473
    .local v9, "bestLocaleIndex":I
    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-le v10, v6, :cond_4

    .line 5474
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v10, :cond_3

    .line 5475
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 5477
    :cond_3
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5479
    :cond_4
    nop

    .line 5480
    invoke-virtual {v8, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    .line 5479
    const-string v11, "persist.sys.locale"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5481
    invoke-static {v8, v9}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5483
    sget-object v10, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;

    .line 5485
    invoke-virtual {v8, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    .line 5483
    invoke-static {v10, v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 5486
    .local v10, "m":Landroid/os/Message;
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5489
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "bestLocaleIndex":I
    .end local v10    # "m":Landroid/os/Message;
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v9

    iput v9, v8, Landroid/content/res/Configuration;->seq:I

    .line 5492
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5496
    new-array v8, v6, [I

    const/16 v9, 0xcb

    aput v9, v8, v4

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5497
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {v4}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->setScreenSize()V

    .line 5501
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config changes="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 5506
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 5508
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    .line 5509
    .local v4, "ac":Lcom/android/server/AttributeCache;
    if-eqz v4, :cond_7

    .line 5510
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v8}, Lcom/android/server/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5517
    :cond_7
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 5521
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5522
    .local v8, "configCopy":Landroid/content/res/Configuration;
    if-eqz p3, :cond_8

    invoke-static {v5}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5523
    sget-object v9, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    .line 5525
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5523
    invoke-static {v9, v0, v10, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 5526
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5529
    .end local v9    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v9

    .line 5530
    .local v9, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v6

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_a

    .line 5531
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 5532
    .local v6, "pid":I
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowProcessController;

    .line 5533
    .local v11, "app":Lcom/android/server/wm/WindowProcessController;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v12, :cond_9

    .line 5534
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

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    :cond_9
    invoke-virtual {v11, v8}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5530
    .end local v6    # "pid":I
    .end local v11    # "app":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 5546
    .end local v10    # "i":I
    :cond_a
    sget-object v6, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5548
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 5546
    invoke-static {v6, v7, v10, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5549
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5553
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;Z)I

    .line 5556
    return v5
.end method

.method public updateLockTaskFeatures(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 4747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4748
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4749
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskFeatures()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4753
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

    .line 4754
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4753
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4756
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4757
    return-void

    .line 4756
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
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 3285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3286
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3287
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskPackages()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3291
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Whitelisting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3291
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 3294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3295
    return-void

    .line 3294
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateOomAdj()V
    .locals 2

    .line 5844
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5845
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5846
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .locals 10
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .line 5371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5373
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5374
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 5376
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5379
    nop

    .line 5380
    return-void

    .line 5376
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

    .line 5378
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5379
    throw v2
.end method

.method updateSleepIfNeededLocked()V
    .locals 7

    .line 5804
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5805
    .local v0, "shouldSleep":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5806
    .local v2, "wasSleeping":Z
    const/4 v3, 0x0

    .line 5808
    .local v3, "updateOomAdj":Z
    const-string v4, "ActivityTaskManager"

    const/16 v5, 0xe

    if-nez v0, :cond_1

    .line 5812
    if-eqz v2, :cond_0

    .line 5813
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5814
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5816
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5817
    iput v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5818
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5821
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 5822
    if-eqz v2, :cond_3

    .line 5823
    const/4 v3, 0x1

    goto :goto_0

    .line 5825
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    .line 5826
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5827
    invoke-static {v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5829
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_2

    .line 5830
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5832
    :cond_2
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5833
    const-string v1, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5834
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 5835
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5836
    const/4 v3, 0x1

    .line 5838
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 5839
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 5841
    :cond_4
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2912
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2913
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2914
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2915
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2917
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2918
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
