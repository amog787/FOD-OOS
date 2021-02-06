.class public Lcom/android/server/wm/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;,
        Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final DEFER_RESUME:Z = true

.field private static final HANDLE_LAUNCHBOOST_RESET_MSG:I = 0xda

.field private static final IDLE_NOW_MSG:I = 0xc9

.field private static final IDLE_TIMEOUT:I = 0x2710

.field private static final IDLE_TIMEOUT_MSG:I = 0xc8

.field private static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field private static final LAUNCH_TIMEOUT:I = 0x2710

.field private static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field private static final NODE_PATH:Ljava/lang/String; = "/proc/sys/kernel/launcher_boost_enabled"

.field static final ON_TOP:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field private static final PROCESS_STOPPING_AND_FINISHING_MSG:I = 0xcd

.field static final REMOVE_FROM_RECENTS:Z = true

.field private static final REPORT_HOME_CHANGED_MSG:I = 0xd8

.field private static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field private static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field private static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field private static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field private static final SET_TOP_APP:Ljava/lang/String; = "boost_top_ux"

.field private static final SLEEP_TIMEOUT:I = 0x1388

.field private static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field private static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static launchboostCnt:I

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field private mDeferResumeCount:I

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field private final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemChooserActivity:Landroid/content/ComponentName;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field private mUIFirstUtil:Lcom/oneplus/uifirst/UIFirstUtils;

.field mUserLeaving:Z

.field public mUxPerf:Landroid/util/BoostFramework;

.field private mVisibilityTransactionDepth:I

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 199
    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 200
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 223
    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 252
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 202
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUIFirstUtil:Lcom/oneplus/uifirst/UIFirstUtils;

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 472
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 473
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 474
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 475
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 180
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .line 180
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    return v0
.end method

.method private addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2446
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2449
    :cond_0
    return-void
.end method

.method private addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2476
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2482
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2483
    return-void
.end method

.method private checkFinishBootingLocked()Z
    .locals 4

    .line 1356
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1357
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 1358
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1359
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1361
    const/4 v1, 0x1

    .line 1363
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1366
    :cond_2
    return v0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .locals 17
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header"    # Ljava/lang/Runnable;
    .param p11, "lastTask"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/wm/Task;",
            ")Z"
        }
    .end annotation

    .line 2132
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v0, 0x0

    .line 2133
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2134
    .local v4, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2135
    .local v5, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object v8, v4

    move v9, v5

    move v10, v6

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object v6, v0

    move/from16 v0, p9

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/Runnable;
    .end local p11    # "lastTask":Lcom/android/server/wm/Task;
    .local v0, "needNL":Z
    .local v4, "header":Ljava/lang/Runnable;
    .local v5, "lastTask":Lcom/android/server/wm/Task;
    .local v6, "innerPrefix":Ljava/lang/String;
    .local v8, "args":[Ljava/lang/String;
    .local v9, "printed":Z
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_d

    .line 2136
    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 2137
    .local v12, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2138
    move-object/from16 v7, p0

    move-object/from16 v15, p4

    goto/16 :goto_b

    .line 2140
    :cond_0
    const/4 v13, 0x0

    if-nez v6, :cond_1

    .line 2141
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2142
    new-array v8, v13, [Ljava/lang/String;

    .line 2144
    :cond_1
    const/4 v9, 0x1

    .line 2145
    if-nez p6, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move v13, v7

    .line 2146
    .local v13, "full":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 2147
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    .line 2146
    :cond_4
    move v14, v0

    .line 2150
    .end local v0    # "needNL":Z
    .local v14, "needNL":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 2151
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2152
    const/4 v4, 0x0

    .line 2154
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v5, v0, :cond_8

    .line 2155
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2156
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2157
    const-string v0, "  "

    if-eqz v13, :cond_6

    const-string v15, "* "

    goto :goto_2

    :cond_6
    move-object v15, v0

    :goto_2
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2159
    if-eqz v13, :cond_7

    .line 2160
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2161
    :cond_7
    if-eqz p5, :cond_8

    .line 2163
    iget-object v15, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_8

    .line 2164
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    iget-object v0, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    :cond_8
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_9

    const-string v0, "  * "

    goto :goto_4

    :cond_9
    const-string v0, "    "

    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2172
    if-eqz v13, :cond_a

    .line 2173
    invoke-virtual {v12, v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_5

    .line 2174
    :cond_a
    if-eqz p5, :cond_b

    .line 2176
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_b

    .line 2178
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2181
    :cond_b
    :goto_5
    if-eqz p7, :cond_c

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2184
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 2186
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p9, v0

    .line 2188
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2189
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 2188
    invoke-interface {v0, v7, v2, v6, v8}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2191
    const-wide/16 v2, 0x7d0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "header":Ljava/lang/Runnable;
    :try_start_2
    invoke-virtual {v4, v7, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2193
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2194
    goto :goto_9

    .line 2193
    :catchall_0
    move-exception v0

    goto :goto_6

    .local v4, "header":Ljava/lang/Runnable;
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "header":Ljava/lang/Runnable;
    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2194
    nop

    .end local v5    # "lastTask":Lcom/android/server/wm/Task;
    .end local v6    # "innerPrefix":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v9    # "printed":Z
    .end local v10    # "i":I
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .end local v14    # "needNL":Z
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "complete":Z
    .end local p6    # "brief":Z
    .end local p7    # "client":Z
    .end local p8    # "dumpPackage":Ljava/lang/String;
    .end local p9    # "header":Ljava/lang/Runnable;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2197
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v5    # "lastTask":Lcom/android/server/wm/Task;
    .restart local v6    # "innerPrefix":Ljava/lang/String;
    .restart local v8    # "args":[Ljava/lang/String;
    .restart local v9    # "printed":Z
    .restart local v10    # "i":I
    .restart local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "full":Z
    .restart local v14    # "needNL":Z
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "complete":Z
    .restart local p6    # "brief":Z
    .restart local p7    # "client":Z
    .restart local p8    # "dumpPackage":Ljava/lang/String;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 2195
    :catch_1
    move-exception v0

    goto :goto_8

    .line 2197
    .end local p9    # "header":Ljava/lang/Runnable;
    .local v4, "header":Ljava/lang/Runnable;
    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2198
    .end local v4    # "header":Ljava/lang/Runnable;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v4    # "header":Ljava/lang/Runnable;
    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2196
    .end local v4    # "header":Ljava/lang/Runnable;
    .local v0, "e":Ljava/io/IOException;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    nop

    .line 2200
    :goto_a
    const/4 v0, 0x1

    move-object/from16 v4, p9

    .end local v14    # "needNL":Z
    .local v0, "needNL":Z
    goto :goto_b

    .line 2181
    .end local v0    # "needNL":Z
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v4    # "header":Ljava/lang/Runnable;
    .restart local v14    # "needNL":Z
    :cond_c
    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2135
    .end local v4    # "header":Ljava/lang/Runnable;
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .restart local p9    # "header":Ljava/lang/Runnable;
    move-object/from16 v4, p9

    move v0, v14

    .end local v14    # "needNL":Z
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v0    # "needNL":Z
    .restart local v4    # "header":Ljava/lang/Runnable;
    :goto_b
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    .line 2203
    .end local v10    # "i":I
    return v9
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I

    .line 1295
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1296
    return v0

    .line 1299
    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1300
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1301
    return v0

    .line 1306
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 1308
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1307
    invoke-virtual {v2, p2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1314
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1315
    return v0

    .line 1318
    :cond_2
    invoke-static {v1, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1319
    const/4 v0, 0x1

    return v0

    .line 1322
    :cond_3
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 1323
    .local v9, "opCode":I
    if-ne v9, v4, :cond_4

    .line 1324
    return v0

    .line 1327
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, ""

    move v4, v9

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1329
    const/4 v0, 0x2

    return v0

    .line 1332
    :cond_5
    return v0

    .line 1309
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "opCode":I
    :catch_0
    move-exception v2

    .line 1310
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    return v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "ignoreTargetSecurity"    # Z

    .line 1268
    const/4 v0, -0x1

    if-nez p6, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p4, p5, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1271
    const/4 v0, 0x1

    return v0

    .line 1274
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1275
    return v2

    .line 1278
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1279
    .local v1, "opCode":I
    if-ne v1, v0, :cond_2

    .line 1280
    return v2

    .line 1283
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, ""

    move v4, v1

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1285
    if-nez p6, :cond_3

    .line 1286
    const/4 v0, 0x2

    return v0

    .line 1290
    :cond_3
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # I

    .line 2407
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2408
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2412
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2414
    return-void

    .line 2410
    :cond_1
    :goto_0
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1979
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1980
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1982
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1983
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1984
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1988
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1989
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 1990
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1992
    :cond_0
    return-void
.end method

.method public static synthetic lambda$BFgD0ahFSDg4CqQNytqWrPRgFII(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic lambda$GTQdt2-hJbSgeh3nbBxR-rvVTqw(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->processRemoveTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic lambda$mLKHIIzkTAK9QSlSxia8-84y15M(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, "extrasSize":I
    if-eqz p1, :cond_0

    .line 1061
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1062
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1066
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1067
    .local v1, "icicleSize":I
    :goto_0
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_2

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extras size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", icicle size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_2
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1521
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1523
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1525
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1528
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1530
    :cond_2
    return-void
.end method

.method private static nextTaskIdForUser(II)I
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 594
    add-int/lit8 v0, p0, 0x1

    .line 595
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 597
    sub-int/2addr v0, v2

    .line 599
    :cond_0
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/Runnable;

    .line 2113
    if-eqz p1, :cond_3

    .line 2114
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2115
    :cond_0
    if-eqz p3, :cond_1

    .line 2116
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2118
    :cond_1
    if-eqz p5, :cond_2

    .line 2119
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 2121
    :cond_2
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2123
    const/4 v0, 0x1

    return v0

    .line 2126
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private processRemoveTask(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1632
    const/4 v0, 0x1

    const-string v1, "remove-stack"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1633
    return-void
.end method

.method private processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .locals 9
    .param p1, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "processPausingActivities"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 2012
    const/4 v0, 0x0

    .line 2013
    .local v0, "readyToStopActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 2014
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2015
    .local v3, "s":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x3

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v4

    .line 2017
    .local v4, "animating":Z
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": nowVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " animating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " finishing="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_5

    .line 2020
    :cond_1
    if-nez p2, :cond_2

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2023
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2024
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2025
    goto :goto_1

    .line 2028
    :cond_2
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ready to stop: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_3
    if-nez v0, :cond_4

    .line 2030
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 2032
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2013
    .end local v3    # "s":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "animating":Z
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 2038
    .end local v1    # "i":I
    :cond_6
    if-nez v0, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2039
    .local v1, "numReadyStops":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_a

    .line 2040
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2041
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2042
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_8

    .line 2044
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_4

    .line 2046
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    .line 2039
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2051
    .end local v3    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2052
    .local v3, "numFinishingActivities":I
    if-nez v3, :cond_b

    .line 2053
    return-void

    .line 2058
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2059
    .local v4, "finishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2060
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_d

    .line 2061
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 2062
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2063
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 2060
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2066
    .end local v5    # "i":I
    :cond_d
    return-void
.end method

.method private removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 5
    .param p2, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2075
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2076
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from list "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_0
    :goto_0
    if-lez v0, :cond_4

    .line 2079
    add-int/lit8 v0, v0, -0x1

    .line 2080
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2081
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, p2, :cond_3

    .line 2083
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_2

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2085
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 2087
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    goto :goto_0

    .line 2088
    :cond_4
    return-void
.end method

.method private removePinnedStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1594
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->cancelAnimation()V

    .line 1595
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/ActivityStack;->setForceHidden(IZ)Z

    .line 1596
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1597
    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 1601
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1602
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1604
    .local v3, "toDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1606
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1607
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 1608
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V

    .line 1612
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityStack;->setForceHidden(IZ)Z

    .line 1613
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1614
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1617
    nop

    .line 1618
    return-void

    .line 1616
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1617
    throw v0
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1621
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1622
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removePinnedStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 1624
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;

    const-class v1, Lcom/android/server/wm/Task;

    .line 1625
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1624
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 1626
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1627
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1629
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :goto_0
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .locals 2

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_0

    .line 2262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2264
    :cond_0
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2270
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2271
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2273
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2274
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for top state to be released by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_0
    return-void
.end method

.method private scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 2462
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$mLKHIIzkTAK9QSlSxia8-84y15M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$mLKHIIzkTAK9QSlSxia8-84y15M;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2464
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2462
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2465
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2466
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2468
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 2470
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2471
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2473
    :cond_0
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1906
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 1907
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x1081

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1908
    sput-boolean v4, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 1909
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1911
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_0

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 1917
    :goto_0
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_1

    .line 1918
    sput-boolean v4, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 1920
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 1922
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1921
    invoke-virtual {v0, v3, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_2
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1344
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1348
    :cond_0
    return-void
.end method

.method activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;

    .line 1373
    const/4 v0, 0x0

    .line 1375
    .local v0, "booting":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1376
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityIdleInternal: Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 1377
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1376
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1379
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1380
    if-eqz p2, :cond_1

    .line 1381
    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 1390
    :cond_1
    if-eqz p4, :cond_2

    .line 1391
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1396
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1402
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    .line 1404
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v0

    .line 1409
    :cond_5
    iput v1, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 1412
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1413
    if-eqz p1, :cond_7

    .line 1414
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1417
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1418
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1423
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1425
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1429
    :cond_9
    const-string v1, "idle"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1432
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1433
    .local v1, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1435
    if-nez v0, :cond_a

    .line 1437
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 1438
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1443
    .end local v1    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .end local v2    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1444
    return-void
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2417
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2418
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 2420
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2423
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2427
    :cond_0
    return-void
.end method

.method public attachAppLaunchLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1560
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1562
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p3, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1564
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    const/4 v2, -0x1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v7, 0x2f

    .line 1567
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1566
    invoke-static {v2, v3, v4}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method beginActivityVisibilityUpdate()V
    .locals 1

    .line 2502
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    .line 2503
    return-void
.end method

.method beginDeferResume()V
    .locals 1

    .line 2522
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2523
    return-void
.end method

.method public boostTopUX()V
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    monitor-enter v1

    .line 390
    :try_start_0
    sget v2, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/wm/ActivityStackSupervisor;->launchboostCnt:I

    .line 391
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-static {}, Lcom/oneplus/uifirst/UIFirstUtils;->getUIFirstUtil()Lcom/oneplus/uifirst/UIFirstUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUIFirstUtil:Lcom/oneplus/uifirst/UIFirstUtils;

    .line 394
    const-string v1, "/proc/sys/kernel/launcher_boost_enabled"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/oneplus/uifirst/UIFirstUtils;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 392
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 406
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 408
    return v0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 412
    return v2

    .line 414
    :cond_1
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    return v2

    .line 420
    :cond_2
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1535
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1538
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    .line 1539
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1538
    :cond_3
    return v0

    .line 1536
    :cond_4
    :goto_0
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .locals 2
    .param p1, "allowDelay"    # Z

    .line 1939
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    return-void

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->putStacksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1946
    return-void

    .line 1950
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1955
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1957
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_3

    .line 1958
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1960
    :cond_3
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "ignoreTargetSecurity"    # Z
    .param p10, "launchingInTask"    # Z
    .param p11, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p12, "resultRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p13, "resultStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1108
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p11

    iget-object v0, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1109
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    .line 1110
    .local v14, "isCallerRecents":Z
    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v15

    .line 1112
    .local v15, "startAnyPerm":I
    if-eqz v15, :cond_9

    if-eqz v14, :cond_1

    if-eqz p10, :cond_1

    goto/16 :goto_3

    .line 1118
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v6

    .line 1120
    .local v6, "componentRestriction":I
    nop

    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1122
    .local v0, "actionRestriction":I
    const-string v1, ") requires "

    const-string v2, "ActivityTaskManager"

    const-string v3, ", uid="

    const-string v4, " (pid="

    const-string v5, " from "

    if-eq v6, v13, :cond_5

    if-ne v0, v13, :cond_2

    goto/16 :goto_1

    .line 1149
    :cond_2
    const-string v13, "Appop Denial: starting "

    const/4 v12, 0x2

    if-ne v0, v12, :cond_3

    .line 1150
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1153
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v2, 0x0

    return v2

    .line 1157
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    if-ne v6, v12, :cond_4

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires appop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1161
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v2, 0x0

    return v2

    .line 1166
    .end local v1    # "message":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 1124
    :cond_5
    :goto_1
    if-eqz p12, :cond_6

    .line 1125
    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p12

    move-object/from16 v18, p3

    move/from16 v19, p4

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1129
    :cond_6
    const-string v12, "Permission Denial: starting "

    const/4 v13, 0x1

    if-eq v0, v13, :cond_8

    .line 1134
    iget-boolean v13, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v13, :cond_7

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") not exported from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto :goto_2

    .line 1140
    .end local v1    # "msg":Ljava/lang/String;
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 1130
    .end local v1    # "msg":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") with revoked permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1116
    .end local v0    # "actionRestriction":I
    .end local v1    # "msg":Ljava/lang/String;
    .end local v6    # "componentRestriction":I
    :cond_9
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 1684
    if-eqz p3, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1687
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1688
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component for base intent of task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return-void

    .line 1694
    :cond_1
    sget-object v1, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 1695
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1694
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1696
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1698
    if-nez p2, :cond_2

    .line 1699
    return-void

    .line 1703
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1704
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    .local v3, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1706
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1707
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 1709
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 1710
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 1711
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowProcessController;

    .line 1712
    .local v8, "proc":Lcom/android/server/wm/WindowProcessController;
    iget v9, v8, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v10, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v9, v10, :cond_3

    .line 1714
    goto :goto_2

    .line 1716
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v8, v9, :cond_4

    .line 1718
    goto :goto_2

    .line 1720
    :cond_4
    iget-object v9, v8, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1722
    goto :goto_2

    .line 1725
    :cond_5
    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1728
    return-void

    .line 1731
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1733
    return-void

    .line 1737
    :cond_7
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    .end local v8    # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1707
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v7    # "j":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1743
    .end local v5    # "i":I
    :cond_9
    sget-object v5, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v5, v6, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1746
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1748
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V

    .line 640
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1936
    :cond_0
    return-void
.end method

.method public destroyServicetrackerInstance()V
    .locals 1

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    .line 518
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2091
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2092
    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2106
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2109
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .locals 1

    .line 2507
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    .line 2508
    if-nez v0, :cond_0

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->visibilitiesUpdated()V

    .line 2511
    :cond_0
    return-void
.end method

.method endDeferResume()V
    .locals 1

    .line 2529
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2530
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 19
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    .line 1449
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1451
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 1452
    .local v16, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v4, v2

    .line 1456
    .local v4, "top_activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_2

    .line 1459
    sget-boolean v2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v2, :cond_1

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    .line 1463
    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1466
    :cond_2
    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_3

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-void

    .line 1472
    :cond_3
    and-int/lit8 v2, v15, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_4

    .line 1473
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1476
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " findTaskToMoveToFront"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1477
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "reason":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1478
    .local v17, "reparented":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1480
    .local v13, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v13}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1482
    iget-object v8, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1483
    invoke-virtual {v8, v1, v5, v14, v7}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1485
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v12, v0, :cond_5

    .line 1486
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    invoke-direct {v6, v15, v7, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    .line 1487
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x1

    move-object/from16 v7, p1

    move-object v8, v12

    move-object/from16 p4, v12

    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .local p4, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v12, v18

    move-object v1, v13

    .end local v13    # "bounds":Landroid/graphics/Rect;
    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1489
    move-object/from16 v0, p4

    .line 1490
    const/16 v17, 0x1

    goto :goto_1

    .line 1485
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "bounds":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 p4, v12

    move-object v1, v13

    .line 1494
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local p4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityStack;->shouldResizeStackWithLaunchBounds()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 1495
    move-object/from16 v7, p4

    .end local p4    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, v1, v8, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    goto :goto_2

    .line 1500
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local p4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    move-object/from16 v7, p4

    .end local p4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v14, v8, v8}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 1504
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    :goto_2
    move-object v7, v0

    .end local v0    # "currentStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-nez v17, :cond_8

    .line 1505
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-direct {v6, v15, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    .line 1508
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1509
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v9, 0x0

    .line 1510
    if-nez v8, :cond_9

    const/16 v18, 0x0

    goto :goto_3

    :cond_9
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v18, v0

    .line 1509
    :goto_3
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v10, v2

    .end local v2    # "reason":Ljava/lang/String;
    .local v10, "reason":Ljava/lang/String;
    move v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v11, v4

    .end local v4    # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .local v11, "top_activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v18

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1512
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_a
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1516
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V

    .line 1517
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUser()I
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    return v0
.end method

.method getNextTaskIdForUser(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 611
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 612
    .local v1, "candidateTaskId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    .line 613
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    return v1

    .line 615
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 616
    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 619
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "toTop"    # Z

    .line 1810
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1811
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    .line 1812
    .local v1, "rootTaskId":I
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 1815
    .local v2, "inMultiWindowMode":Z
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    if-ne v4, v1, :cond_0

    .line 1816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-object v0

    .line 1823
    :cond_0
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1824
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1830
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1831
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1836
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_5

    goto :goto_2

    .line 1838
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1844
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-eqz v0, :cond_7

    .line 1848
    return-object v0

    .line 1850
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 1851
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    .line 1850
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 1853
    :cond_8
    return-object p2
.end method

.method getRunningTasks()Lcom/android/server/wm/RunningTasks;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-object v0
.end method

.method public getServicetrackerInstance()Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    .locals 4

    .line 499
    const-string v0, "ActivityTaskManager"

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    if-nez v1, :cond_0

    .line 501
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;->getService(Z)Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get servicetracker interface"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    return-object v2

    .line 502
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 507
    :goto_0
    nop

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    if-nez v1, :cond_0

    .line 509
    const-string v1, "servicetracker HIDL not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v2

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    return-object v0
.end method

.method getSystemChooserActivity()Landroid/content/ComponentName;
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 539
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 1250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1252
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    return-object v2

    .line 1254
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v2
.end method

.method goingToSleepLocked()V
    .locals 2

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 1858
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1860
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1865
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 1871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1872
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2334
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V

    .line 2336
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 2341
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 2342
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2343
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_0
    if-eqz p4, :cond_1

    .line 2344
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 2345
    .local v3, "inSplitScreenMode":Z
    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eqz v2, :cond_3

    .line 2346
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2347
    :cond_3
    return-void

    .line 2351
    :cond_4
    if-eqz v2, :cond_a

    .line 2352
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2356
    iget-object v4, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2358
    .local v4, "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_5

    .line 2359
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    nop

    .line 2361
    .local v0, "singleTaskInstance":Z
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eq v4, v1, :cond_7

    .line 2365
    if-eqz v0, :cond_6

    .line 2366
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2367
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    .line 2369
    return-void

    .line 2372
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to put "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on display "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2375
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_3

    .line 2377
    :cond_7
    if-nez p5, :cond_8

    .line 2378
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2383
    :cond_8
    :goto_3
    return-void

    .line 2353
    .end local v0    # "singleTaskInstance":Z
    .end local v4    # "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2386
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p5, :cond_b

    goto :goto_4

    .line 2402
    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2403
    return-void

    .line 2389
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2390
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2393
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    .line 2394
    invoke-virtual {v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2395
    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 2396
    iget-object v5, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2399
    :cond_d
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .line 2282
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top resumed state released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    if-eqz p1, :cond_0

    const-string v1, " (due to timeout)"

    goto :goto_0

    :cond_0
    const-string v1, " (transition complete)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2283
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2287
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2

    .line 2289
    return-void

    .line 2291
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2292
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2293
    return-void
.end method

.method inActivityVisibilityUpdate()Z
    .locals 1

    .line 2515
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initPowerManagement()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 567
    nop

    .line 568
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 571
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 478
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 479
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    .line 483
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->setRunningTasks(Lcom/android/server/wm/RunningTasks;)V

    .line 485
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 486
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 488
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 489
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 490
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 491
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 492
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 10
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1179
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch on display check: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_2

    .line 1183
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1

    const-string v0, "Launch on display check: no caller info, skip check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1
    return v2

    .line 1187
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1188
    invoke-virtual {v3, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1189
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 1196
    :cond_3
    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v5, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 1198
    .local v5, "startAnyPerm":I
    if-nez v5, :cond_5

    .line 1199
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_4

    const-string v0, "Launch on display check: allow launch any on display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_4
    return v2

    .line 1205
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->isUidPresent(I)Z

    move-result v6

    .line 1207
    .local v6, "uidPresentOnDisplay":Z
    iget-object v7, v3, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    move-result v7

    .line 1208
    .local v7, "displayOwnerUid":I
    iget-object v8, v3, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_9

    .line 1211
    iget v8, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    .line 1212
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_6

    const-string v0, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_6
    return v4

    .line 1217
    :cond_7
    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v8, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v0, :cond_9

    if-nez v6, :cond_9

    .line 1219
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_8

    const-string v0, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_8
    return v4

    .line 1225
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1227
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a

    const-string v0, "Launch on display check: allow launch on public display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_a
    return v2

    .line 1233
    :cond_b
    if-ne v7, p2, :cond_d

    .line 1234
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_c

    const-string v0, "Launch on display check: allow launch for owner of the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_c
    return v2

    .line 1239
    :cond_d
    if-eqz v6, :cond_f

    .line 1240
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_e

    const-string v0, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_e
    return v2

    .line 1245
    :cond_f
    const-string v0, "Launch on display check: denied"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return v4

    .line 1190
    .end local v5    # "startAnyPerm":I
    .end local v6    # "uidPresentOnDisplay":Z
    .end local v7    # "displayOwnerUid":I
    :cond_10
    :goto_0
    const-string v0, "Launch on display check: display not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v4
.end method

.method isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1172
    nop

    .line 1173
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1172
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2000
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2001
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$activityIdleInternal$0$ActivityStackSupervisor()V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$removeStack$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1641
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method logStackState()V
    .locals 1

    .line 2430
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 2431
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 580
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 581
    .local v0, "recentsStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1790
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1791
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "wasTrimmed"    # Z
    .param p3, "killProcess"    # Z

    .line 1795
    if-eqz p2, :cond_0

    .line 1798
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string v2, "recent-task-trimmed"

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 1801
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->removedFromRecents()V

    .line 1802
    return-void
.end method

.method onSystemReady()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 496
    return-void
.end method

.method onUserUnlocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 526
    return-void
.end method

.method readyToResume()Z
    .locals 1

    .line 2534
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .locals 38
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "2nd-crash"

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const-string v5, "ActivityTaskManager"

    const/4 v6, 0x0

    if-nez v0, :cond_2

    .line 815
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " some activities pausing..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1
    return v6

    .line 821
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 822
    .local v7, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 824
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 827
    :try_start_0
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 830
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 832
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 835
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 836
    const/4 v0, 0x0

    move v9, v0

    .end local p3    # "andResume":Z
    .local v0, "andResume":Z
    goto :goto_0

    .line 1004
    .end local v0    # "andResume":Z
    .restart local p3    # "andResume":Z
    :catchall_0
    move-exception v0

    move/from16 v9, p3

    move-object/from16 v36, v7

    goto/16 :goto_a

    .line 839
    :cond_3
    move/from16 v9, p3

    .end local p3    # "andResume":Z
    .local v9, "andResume":Z
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 845
    const/4 v10, 0x1

    if-eqz p4, :cond_4

    .line 849
    :try_start_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v0, v2, v11, v6, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1004
    :catchall_1
    move-exception v0

    move-object/from16 v36, v7

    goto/16 :goto_a

    .line 853
    :cond_4
    :goto_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v10, v10}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_5

    .line 854
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->allowMoveToFront()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 863
    :cond_5
    :try_start_6
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_6

    :try_start_7
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    move v11, v0

    .line 864
    .local v11, "applicationInfoUid":I
    :try_start_8
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v0, v12, :cond_7

    :try_start_9
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq v0, v11, :cond_8

    .line 865
    :cond_7
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User ID for activity changing for "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " appInfo.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " info.ai.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " old="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " new="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_8
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v10

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 874
    iget-wide v12, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v3, v12, v13}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 877
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->isIopPreloadEnabled()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_9

    :try_start_b
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 878
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "codePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v12, v13, v0}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 885
    .end local v0    # "codePath":Ljava/lang/String;
    :cond_9
    :try_start_c
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 886
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v0, v7, Lcom/android/server/wm/Task;->mLockTaskAuth:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v13, 0x2

    if-eq v0, v13, :cond_a

    :try_start_d
    iget v0, v7, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x4

    if-eq v0, v14, :cond_a

    iget v0, v7, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_b

    .line 889
    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-ne v0, v10, :cond_b

    .line 891
    :cond_a
    :try_start_e
    invoke-virtual {v12, v7, v6, v6}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 895
    :cond_b
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v0, :cond_16

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v14, 0x0

    .line 900
    .local v14, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v9, :cond_c

    .line 903
    :try_start_10
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v15

    .line 904
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v14, v15

    move-object v14, v0

    goto :goto_3

    .line 987
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_0
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move/from16 v32, v11

    move-object/from16 v34, v12

    goto/16 :goto_9

    .line 900
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_c
    move-object v15, v14

    move-object v14, v0

    .line 906
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local v15, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_3
    :try_start_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v0, :cond_d

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " savedState="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with results="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " newIntents="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " andResume="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 913
    :cond_d
    :try_start_13
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move/from16 v32, v11

    const/16 v11, 0x400

    .end local v11    # "applicationInfoUid":I
    .local v32, "applicationInfoUid":I
    :try_start_14
    invoke-interface {v10, v13, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 917
    goto :goto_5

    .line 987
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_1
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v34, v12

    goto/16 :goto_9

    .line 915
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v15    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_2
    move-exception v0

    goto :goto_4

    .line 987
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "applicationInfoUid":I
    .restart local v11    # "applicationInfoUid":I
    :catch_3
    move-exception v0

    move/from16 v32, v11

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v34, v12

    .end local v11    # "applicationInfoUid":I
    .restart local v32    # "applicationInfoUid":I
    goto/16 :goto_9

    .line 915
    .end local v32    # "applicationInfoUid":I
    .restart local v11    # "applicationInfoUid":I
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v15    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_4
    move-exception v0

    move/from16 v32, v11

    .line 916
    .end local v11    # "applicationInfoUid":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v32    # "applicationInfoUid":I
    :goto_4
    :try_start_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error to change launcher resourceDirs:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget v10, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v6, v10, v11}, Lcom/android/server/wm/EventLogTags;->writeWmRestartActivity(IIILjava/lang/String;)V

    .line 921
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    if-eqz v0, :cond_e

    .line 923
    :try_start_16
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 925
    :cond_e
    :try_start_17
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 926
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 925
    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 927
    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 928
    iput-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 929
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 930
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 936
    new-instance v0, Landroid/util/MergedConfiguration;

    .line 937
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v0, v6, v10}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 938
    .local v0, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 940
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 944
    nop

    .line 945
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 944
    invoke-static {v6, v10}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v6

    .line 947
    .local v6, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 948
    .local v10, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v11, Landroid/content/Intent;

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 949
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 952
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 953
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v33, v0

    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v33, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v34, v12

    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v34, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :try_start_18
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-object/from16 v35, v4

    :try_start_19
    iget-object v4, v7, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 954
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v23

    .line 955
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPersistentSavedState()Landroid/os/PersistableBundle;

    move-result-object v25

    .line 956
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v28

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v29
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move-object/from16 v36, v7

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .local v36, "task":Lcom/android/server/wm/Task;
    :try_start_1a
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->createFixedRotationAdjustmentsIfNeeded()Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    move-result-object v31

    .line 948
    move-object/from16 v37, v15

    .end local v15    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .local v37, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object v15, v11

    move-object/from16 v17, v13

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v4

    move-object/from16 v26, v14

    move-object/from16 v27, v37

    move-object/from16 v30, v7

    invoke-static/range {v15 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 961
    if-eqz v9, :cond_f

    .line 962
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    .local v0, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_6

    .line 964
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_f
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 966
    .restart local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_6
    invoke-virtual {v6, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 969
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 971
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v7, 0x2

    and-int/2addr v4, v7

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v4, :cond_11

    .line 976
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 977
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, v3, :cond_10

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting new heavy weight process "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " when already running "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_10
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1002
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v6    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v10    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v37    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_11
    nop

    .line 1004
    .end local v32    # "applicationInfoUid":I
    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1005
    nop

    .line 1007
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1011
    if-eqz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1014
    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_7

    .line 1019
    :cond_12
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSED: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (starting in paused state)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_13
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "realStartActivityLocked"

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1022
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 1026
    :goto_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 1032
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1033
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 1038
    :cond_14
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_15

    .line 1039
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 1042
    :cond_15
    const/4 v4, 0x1

    return v4

    .line 987
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v32    # "applicationInfoUid":I
    .restart local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v35, v4

    :goto_8
    move-object/from16 v36, v7

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    goto :goto_9

    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_7
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v34, v12

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    goto :goto_9

    .line 896
    .end local v32    # "applicationInfoUid":I
    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "applicationInfoUid":I
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :cond_16
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move/from16 v32, v11

    move-object/from16 v34, v12

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "applicationInfoUid":I
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v32    # "applicationInfoUid":I
    .restart local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    :try_start_1b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "andResume":Z
    .end local v32    # "applicationInfoUid":I
    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 987
    .restart local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "andResume":Z
    .restart local v32    # "applicationInfoUid":I
    .restart local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catch_8
    move-exception v0

    goto :goto_9

    .end local v32    # "applicationInfoUid":I
    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "applicationInfoUid":I
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_9
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move/from16 v32, v11

    move-object/from16 v34, v12

    .line 988
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "applicationInfoUid":I
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v32    # "applicationInfoUid":I
    .restart local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    :goto_9
    :try_start_1c
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_17

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 991
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    move-object/from16 v4, v35

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->appDied(Ljava/lang/String;)V

    .line 993
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 994
    nop

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 994
    return v5

    .line 999
    :cond_17
    const/4 v4, 0x1

    :try_start_1d
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1000
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1001
    nop

    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "andResume":Z
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1004
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v32    # "applicationInfoUid":I
    .end local v34    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "andResume":Z
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catchall_2
    move-exception v0

    goto :goto_a

    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    :catchall_3
    move-exception v0

    move-object/from16 v36, v7

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    goto :goto_a

    .end local v9    # "andResume":Z
    .end local v36    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local p3    # "andResume":Z
    :catchall_4
    move-exception v0

    move-object/from16 v36, v7

    move/from16 v9, p3

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local p3    # "andResume":Z
    .restart local v9    # "andResume":Z
    .restart local v36    # "task":Lcom/android/server/wm/Task;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1005
    throw v0
.end method

.method removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2069
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v1, "mStoppingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v1, "mFinishingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2071
    return-void
.end method

.method removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2296
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2297
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2296
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2299
    return-void
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2323
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2324
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .line 2314
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2315
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1641
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1642
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 1665
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v0, :cond_0

    .line 1667
    return-void

    .line 1669
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1671
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p4}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V

    .line 1673
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 1674
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1675
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_1

    .line 1676
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    :cond_1
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1680
    nop

    .line 1681
    return-void

    .line 1679
    :catchall_0
    move-exception v0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1680
    throw v0
.end method

.method removeTaskById(IZZLjava/lang/String;)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1655
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1656
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1658
    return v1

    .line 1660
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v1, 0x0

    return v1
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 6
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "totalTime"    # J
    .param p5, "launchState"    # I

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "changed":Z
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v3, 0x1042

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 705
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 706
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    .line 707
    const/4 v0, 0x1

    .line 708
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 709
    if-eqz p2, :cond_1

    .line 710
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 712
    :cond_1
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 713
    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    .line 704
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 717
    .end local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 718
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 720
    :cond_4
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1964
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1966
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1967
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1968
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1971
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 1972
    const/4 v1, 0x1

    return v1

    .line 1974
    :cond_0
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 670
    return-void

    .line 673
    :cond_1
    const/4 v1, 0x0

    .line 675
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 676
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 677
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    .line 678
    const/4 v1, 0x1

    .line 679
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 683
    if-ne p2, v0, :cond_2

    .line 684
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 675
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 689
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 692
    :cond_4
    return-void
.end method

.method public resetBoostTopUX()V
    .locals 2

    .line 398
    invoke-static {}, Lcom/oneplus/uifirst/UIFirstUtils;->getUIFirstUtil()Lcom/oneplus/uifirst/UIFirstUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUIFirstUtil:Lcom/oneplus/uifirst/UIFirstUtils;

    .line 399
    const-string v0, "/proc/sys/kernel/launcher_boost_enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/oneplus/uifirst/UIFirstUtils;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 724
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 725
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_3

    .line 730
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 734
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 735
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 744
    sget-object v1, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 746
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 744
    move-object v3, v0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 748
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    goto :goto_1

    .line 751
    :catch_0
    move-exception v2

    .line 754
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 757
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 759
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 762
    .end local v1    # "intentLaunchToken":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I
    .param p6, "filterCallingUid"    # I

    .line 804
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 805
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    .line 768
    const-wide/16 v1, 0x20

    :try_start_0
    const-string v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 769
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 771
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v11, v0

    goto :goto_1

    .line 773
    :cond_1
    :goto_0
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    move v11, v0

    .line 775
    .end local v0    # "modifiedFlags":I
    .local v11, "modifiedFlags":I
    :goto_1
    const/4 v0, 0x0

    .line 776
    .local v0, "privateResolveFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    .line 778
    or-int/lit8 v0, v0, 0x1

    .line 780
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 781
    or-int/lit8 v0, v0, 0x2

    move v12, v0

    goto :goto_2

    .line 780
    :cond_3
    move v12, v0

    .line 789
    .end local v0    # "privateResolveFlags":I
    .local v12, "privateResolveFlags":I
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v13, v3

    .line 791
    .local v13, "token":J
    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/4 v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v6, v11

    move v7, v12

    move/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 798
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    return-object v0

    .line 795
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .end local p5    # "filterCallingUid":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 798
    .end local v11    # "modifiedFlags":I
    .end local v12    # "privateResolveFlags":I
    .end local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "flags":I
    .restart local p5    # "filterCallingUid":I
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 799
    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 1767
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1768
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1769
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1771
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v2, 0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1776
    :cond_0
    if-eqz v1, :cond_1

    .line 1778
    const v3, 0x7fffffff

    const-string v4, "restoreRecentTaskLocked"

    invoke-virtual {p1, v0, v3, v2, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 1779
    return v2

    .line 1782
    :cond_1
    invoke-virtual {v0, p1, p3, v2}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 1783
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added restored task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_2
    return v2

    .line 1773
    :cond_3
    :goto_0
    return v2
.end method

.method final scheduleIdle()V
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2214
    return-void
.end method

.method scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 2207
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleIdleTimeout: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2209
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2210
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1995
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1996
    return-void
.end method

.method scheduleProcessStoppingAndFinishingActivities()V
    .locals 2

    .line 2308
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2311
    :cond_0
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2328
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2330
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2305
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2319
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2320
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2434
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$BFgD0ahFSDg4CqQNytqWrPRgFII;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$BFgD0ahFSDg4CqQNytqWrPRgFII;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2436
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2434
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2437
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2438
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2440
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2441
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2443
    :cond_0
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prevStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2452
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2453
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    .line 2454
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2458
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 2459
    return-void

    .line 2455
    :cond_1
    :goto_0
    return-void
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1336
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1337
    return-void
.end method

.method setNextTaskIdForUser(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 588
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .locals 1
    .param p1, "recentTasks"    # Lcom/android/server/wm/RecentTasks;

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 548
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 549
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 550
    return-void
.end method

.method setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .locals 0
    .param p1, "runningTasks"    # Lcom/android/server/wm/RunningTasks;

    .line 554
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 555
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .line 1576
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_0

    .line 1577
    return-void

    .line 1580
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 1581
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 1582
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 574
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 575
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 576
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 7
    .param p1, "timeout"    # I

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 1877
    const/4 v0, 0x0

    .line 1878
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1880
    .local v1, "endTime":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->putStacksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 1883
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 1885
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1886
    :catch_0
    move-exception v5

    .line 1887
    :goto_1
    nop

    .line 1893
    .end local v3    # "timeRemaining":J
    goto :goto_0

    .line 1889
    .restart local v3    # "timeRemaining":J
    :cond_0
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/4 v0, 0x1

    .line 1899
    .end local v3    # "timeRemaining":J
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1901
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .locals 31
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 2671
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v15, p4

    const-string v14, "splitFromRecents"

    const/4 v3, 0x0

    .line 2676
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v0, 0x0

    .line 2677
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 2678
    .local v4, "windowingMode":I
    if-eqz v15, :cond_0

    .line 2679
    invoke-virtual {v15, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_0

    .line 2680
    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v13, v5

    .line 2681
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_3

    .line 2682
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2683
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 2684
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2685
    move/from16 v12, p2

    invoke-virtual {v5, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2686
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    goto :goto_1

    .line 2684
    :cond_1
    move/from16 v12, p2

    .line 2689
    :cond_2
    :goto_1
    move v11, v0

    move v10, v4

    goto :goto_2

    .line 2681
    :cond_3
    move/from16 v12, p2

    move v11, v0

    move v10, v4

    .line 2689
    .end local v0    # "activityType":I
    .end local v4    # "windowingMode":I
    .local v10, "windowingMode":I
    .local v11, "activityType":I
    :goto_2
    const-string v0, "startActivityFromRecents: Task "

    const/4 v9, 0x2

    if-eq v11, v9, :cond_c

    const/4 v8, 0x3

    if-eq v11, v8, :cond_c

    .line 2694
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2698
    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 2700
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2, v9, v13, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object v7, v4

    .line 2702
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_a

    .line 2708
    if-eq v10, v8, :cond_4

    .line 2713
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const-string v3, "startActivityFromRecents"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2762
    :catchall_0
    move-exception v0

    move-object v3, v7

    move v5, v8

    move v4, v10

    move/from16 v29, v11

    move-object/from16 v22, v13

    move-object v6, v14

    goto/16 :goto_7

    .line 2719
    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-nez v0, :cond_8

    .line 2720
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2721
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v6, v0

    .line 2723
    .local v6, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2725
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v3, v7, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2726
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v4, v0

    .line 2730
    .local v4, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :try_start_4
    invoke-static {v5}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setFromRecentState(Z)V

    .line 2732
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_5
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v17, 0x0

    move-object v9, v4

    .end local v4    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .local v9, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    move-object v4, v0

    move-object/from16 v19, v6

    .end local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v19, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move v6, v8

    move-object v8, v7

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .local v8, "task":Lcom/android/server/wm/Task;
    move/from16 v7, v17

    move-object/from16 v22, v8

    move-object/from16 v17, v13

    const/4 v13, 0x3

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .local v17, "activityOptions":Landroid/app/ActivityOptions;
    .local v22, "task":Lcom/android/server/wm/Task;
    move-object/from16 v8, p4

    :try_start_6
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2736
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setFromRecentState(Z)V

    .line 2740
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2742
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v3, v19

    const/4 v4, 0x2

    .end local v19    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0, v9, v4, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 2744
    nop

    .line 2746
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 2747
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2748
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2746
    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2749
    nop

    .line 2762
    if-ne v10, v13, :cond_5

    move-object/from16 v6, v22

    .end local v22    # "task":Lcom/android/server/wm/Task;
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_6

    .line 2766
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    goto :goto_4

    .line 2762
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v22    # "task":Lcom/android/server/wm/Task;
    :cond_5
    move-object/from16 v6, v22

    .line 2769
    .end local v22    # "task":Lcom/android/server/wm/Task;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2749
    const/4 v4, 0x2

    return v4

    .line 2762
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v22    # "task":Lcom/android/server/wm/Task;
    :catchall_1
    move-exception v0

    move-object/from16 v6, v22

    move-object v3, v6

    move v4, v10

    move/from16 v29, v11

    move v5, v13

    move-object v6, v14

    move-object/from16 v22, v17

    .end local v22    # "task":Lcom/android/server/wm/Task;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    goto/16 :goto_7

    .line 2742
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v19    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "task":Lcom/android/server/wm/Task;
    :catchall_2
    move-exception v0

    move-object/from16 v3, v19

    move-object/from16 v6, v22

    .end local v19    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "task":Lcom/android/server/wm/Task;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    goto :goto_5

    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .local v6, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_3
    move-exception v0

    move-object v9, v4

    move-object v3, v6

    move-object v6, v7

    move-object/from16 v17, v13

    const/4 v13, 0x3

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v9, v4

    move-object v3, v6

    move-object v6, v7

    move-object/from16 v17, v13

    move v13, v8

    .end local v4    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "task":Lcom/android/server/wm/Task;
    .restart local v9    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    :goto_5
    :try_start_8
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v5, 0x2

    invoke-virtual {v4, v9, v5, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 2744
    nop

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2762
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_5
    move-exception v0

    move-object v3, v6

    move v4, v10

    move/from16 v29, v11

    move v5, v13

    move-object v6, v14

    move-object/from16 v22, v17

    goto/16 :goto_7

    .line 2720
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_7
    move-object v6, v7

    move-object/from16 v17, v13

    move v13, v8

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_6

    .line 2762
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_6
    move-exception v0

    move-object v6, v7

    move-object/from16 v17, v13

    move-object v3, v6

    move v5, v8

    move v4, v10

    move/from16 v29, v11

    move-object v6, v14

    move-object/from16 v22, v17

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    goto/16 :goto_7

    .line 2719
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_8
    move-object v6, v7

    move-object/from16 v17, v13

    move v13, v8

    .line 2751
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    :goto_6
    :try_start_9
    iget-object v7, v6, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 2752
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v8, v6, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 2753
    .local v8, "callingFeatureId":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2754
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2755
    iget v3, v6, Lcom/android/server/wm/Task;->mUserId:I

    move/from16 v16, v3

    .line 2756
    .local v16, "userId":I
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    iget v4, v6, Lcom/android/server/wm/Task;->mCallingUid:I

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "startActivityFromRecents"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v5, p1

    move-object/from16 v27, v6

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .local v27, "task":Lcom/android/server/wm/Task;
    move/from16 v6, p2

    move-object v9, v0

    move/from16 v28, v10

    .end local v10    # "windowingMode":I
    .local v28, "windowingMode":I
    move-object/from16 v10, v18

    move/from16 v29, v11

    .end local v11    # "activityType":I
    .local v29, "activityType":I
    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v22, v17

    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .local v22, "activityOptions":Landroid/app/ActivityOptions;
    move/from16 v13, v24

    move-object/from16 v30, v14

    move/from16 v14, v25

    move-object/from16 v15, p4

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    :try_start_a
    invoke-virtual/range {v3 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 2762
    move/from16 v4, v28

    const/4 v5, 0x3

    .end local v28    # "windowingMode":I
    .local v4, "windowingMode":I
    if-ne v4, v5, :cond_9

    if-eqz v27, :cond_9

    .line 2766
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    move-object/from16 v6, v30

    invoke-static {v5, v6}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 2769
    :cond_9
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2756
    return v3

    .line 2762
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "windowingMode":I
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "callingFeatureId":Ljava/lang/String;
    .end local v16    # "userId":I
    .restart local v28    # "windowingMode":I
    :catchall_7
    move-exception v0

    move/from16 v4, v28

    move-object/from16 v6, v30

    const/4 v5, 0x3

    move-object/from16 v3, v27

    .end local v28    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    goto :goto_7

    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v27    # "task":Lcom/android/server/wm/Task;
    .end local v29    # "activityType":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v17    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_8
    move-exception v0

    move-object/from16 v27, v6

    move v4, v10

    move/from16 v29, v11

    move v5, v13

    move-object v6, v14

    move-object/from16 v22, v17

    move-object/from16 v3, v27

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v17    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "activityType":I
    goto :goto_7

    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v27    # "task":Lcom/android/server/wm/Task;
    .end local v29    # "activityType":I
    .local v7, "task":Lcom/android/server/wm/Task;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_9
    move-exception v0

    move-object/from16 v27, v7

    move v5, v8

    move v4, v10

    move/from16 v29, v11

    move-object/from16 v22, v13

    move-object v6, v14

    move-object/from16 v3, v27

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "activityType":I
    goto :goto_7

    .line 2703
    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v27    # "task":Lcom/android/server/wm/Task;
    .end local v29    # "activityType":I
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_a
    move-object/from16 v27, v7

    move v5, v8

    move v4, v10

    move/from16 v29, v11

    move-object/from16 v22, v13

    move-object v6, v14

    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "activityType":I
    :try_start_b
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2704
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v27    # "task":Lcom/android/server/wm/Task;
    .end local v29    # "activityType":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 2762
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "activityType":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_a
    move-exception v0

    move-object/from16 v3, v27

    goto :goto_7

    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v27    # "task":Lcom/android/server/wm/Task;
    .end local v29    # "activityType":I
    .local v3, "task":Lcom/android/server/wm/Task;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_b
    move-exception v0

    move v5, v8

    move v4, v10

    move/from16 v29, v11

    move-object/from16 v22, v13

    move-object v6, v14

    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v29    # "activityType":I
    :goto_7
    if-ne v4, v5, :cond_b

    if-eqz v3, :cond_b

    .line 2766
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 2769
    :cond_b
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2770
    throw v0

    .line 2689
    .end local v4    # "windowingMode":I
    .end local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v29    # "activityType":I
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_c
    move v4, v10

    move/from16 v29, v11

    move-object/from16 v22, v13

    .line 2690
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v22    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v29    # "activityType":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents stack."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public startPreferredApps()V
    .locals 3

    .line 1752
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    goto :goto_0

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling PreferredAppsTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .line 1075
    const-string v0, "ActivityTaskManager"

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1076
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1078
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v2, 0x0

    .line 1079
    .local v2, "knownToBeDead":Z
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1081
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_0

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Already Exists in BG. So sending its PID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    const/16 v7, 0x66

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1085
    :cond_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    return-void

    .line 1087
    :catch_0
    move-exception v3

    .line 1088
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when starting activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1089
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    .end local v3    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    .line 1097
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 1099
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1100
    .local v0, "isTop":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_3

    const-string v4, "top-activity"

    goto :goto_1

    :cond_3
    const-string v4, "activity"

    :goto_1
    invoke-virtual {v3, p1, v2, v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1101
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 643
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getLastDrawnDelayMs(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V

    .line 644
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "totalTime"    # J

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 649
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    .line 650
    .local v2, "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 652
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 653
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 654
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 655
    iput-wide p2, v3, Landroid/app/WaitResult;->totalTime:J

    .line 656
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 648
    .end local v2    # "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 662
    :cond_2
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 1046
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->updateCurrentLauncherPid(ILcom/android/server/am/ActivityManagerService;)V

    .line 1056
    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2487
    sget-object v0, Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2489
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2487
    invoke-static {v0, v1, p2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2490
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 2491
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2492
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2493
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .locals 6

    .line 2224
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2225
    .local v0, "prevTopActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2226
    .local v1, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 2231
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 2236
    .local v4, "prevActivityReceivedTopState":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 2237
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2238
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2239
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2243
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2249
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2250
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2251
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    .line 2256
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2257
    return-void

    .line 2227
    .end local v4    # "prevActivityReceivedTopState":Z
    :cond_4
    :goto_1
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;

    .line 629
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 630
    .local v0, "waitInfo":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 2496
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2498
    return-void
.end method
