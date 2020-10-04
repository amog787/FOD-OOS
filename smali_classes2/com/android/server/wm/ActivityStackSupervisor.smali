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

.field static final IDLE_NOW_MSG:I = 0xc9

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0xc8

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_HOME_CHANGED_MSG:I = 0xd8

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

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

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
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

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

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

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field public mUxPerf:Landroid/util/BoostFramework;

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

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 210
    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 211
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 258
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 213
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 303
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 379
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 412
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 463
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 464
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 465
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private checkFinishBootingLocked()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1290
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 1291
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1292
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1293
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1294
    const/4 v1, 0x1

    .line 1296
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1297
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1299
    :cond_2
    return v0
.end method

.method private continueUpdateRecentsHomeStackBounds()V
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1537
    return-void
.end method

.method private deferUpdateRecentsHomeStackBounds()V
    .locals 2

    .line 1530
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1532
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z
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
    .param p10, "header"    # Ljava/lang/String;
    .param p11, "lastTask"    # Lcom/android/server/wm/TaskRecord;
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
            "Ljava/lang/String;",
            "Lcom/android/server/wm/TaskRecord;",
            ")Z"
        }
    .end annotation

    .line 2362
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v0, 0x0

    .line 2363
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2364
    .local v4, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2365
    .local v5, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v10, p9

    move-object v8, v0

    move-object v9, v4

    move-object/from16 v0, p10

    move-object/from16 v4, p11

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/String;
    .end local p11    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "i":I
    .local v8, "innerPrefix":Ljava/lang/String;
    .local v9, "args":[Ljava/lang/String;
    .local v10, "needNL":Z
    :goto_0
    if-ltz v6, :cond_d

    .line 2366
    move-object/from16 v11, p2

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 2367
    .local v12, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2368
    move-object/from16 v7, p0

    move-object/from16 v15, p4

    goto/16 :goto_b

    .line 2370
    :cond_0
    const/4 v13, 0x0

    if-nez v8, :cond_1

    .line 2371
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2372
    new-array v9, v13, [Ljava/lang/String;

    .line 2374
    :cond_1
    const/4 v5, 0x1

    .line 2375
    if-nez p6, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move v13, v7

    .line 2376
    .local v13, "full":Z
    :cond_3
    if-eqz v10, :cond_4

    .line 2377
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    const/4 v10, 0x0

    .line 2380
    :cond_4
    if-eqz v0, :cond_5

    .line 2381
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_1

    .line 2380
    :cond_5
    move-object v14, v0

    .line 2384
    .end local v0    # "header":Ljava/lang/String;
    .local v14, "header":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eq v4, v0, :cond_8

    .line 2385
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2386
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    const-string v0, "  "

    if-eqz v13, :cond_6

    const-string v15, "* "

    goto :goto_2

    :cond_6
    move-object v15, v0

    :goto_2
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2389
    if-eqz v13, :cond_7

    .line 2390
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2391
    :cond_7
    if-eqz p5, :cond_8

    .line 2393
    iget-object v15, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_8

    .line 2394
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    iget-object v0, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
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

    .line 2400
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2402
    if-eqz v13, :cond_a

    .line 2403
    invoke-virtual {v12, v1, v8}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 2404
    :cond_a
    if-eqz p5, :cond_b

    .line 2406
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_b

    .line 2408
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2411
    :cond_b
    :goto_5
    if-eqz p7, :cond_c

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2414
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 2416
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p9, v0

    .line 2418
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2419
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2418
    invoke-interface {v0, v7, v2, v8, v9}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2421
    const-wide/16 v2, 0x7d0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "lastTask":Lcom/android/server/wm/TaskRecord;
    :try_start_2
    invoke-virtual {v4, v7, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2423
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2424
    goto :goto_9

    .line 2423
    :catchall_0
    move-exception v0

    goto :goto_6

    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .end local v5    # "printed":Z
    .end local v6    # "i":I
    .end local v8    # "innerPrefix":Ljava/lang/String;
    .end local v9    # "args":[Ljava/lang/String;
    .end local v10    # "needNL":Z
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .end local v14    # "header":Ljava/lang/String;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "complete":Z
    .end local p6    # "brief":Z
    .end local p7    # "client":Z
    .end local p8    # "dumpPackage":Ljava/lang/String;
    .end local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2427
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v5    # "printed":Z
    .restart local v6    # "i":I
    .restart local v8    # "innerPrefix":Ljava/lang/String;
    .restart local v9    # "args":[Ljava/lang/String;
    .restart local v10    # "needNL":Z
    .restart local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "full":Z
    .restart local v14    # "header":Ljava/lang/String;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "complete":Z
    .restart local p6    # "brief":Z
    .restart local p7    # "client":Z
    .restart local p8    # "dumpPackage":Ljava/lang/String;
    .restart local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 2425
    :catch_1
    move-exception v0

    goto :goto_8

    .line 2427
    .end local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2428
    .end local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 2425
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2426
    .end local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "e":Ljava/io/IOException;
    .restart local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2429
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    nop

    .line 2430
    :goto_a
    const/4 v0, 0x1

    move-object/from16 v4, p9

    move v10, v0

    move-object v0, v14

    .end local v10    # "needNL":Z
    .local v0, "needNL":Z
    goto :goto_b

    .line 2411
    .end local v0    # "needNL":Z
    .end local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "needNL":Z
    :cond_c
    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2365
    .end local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .restart local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v4, p9

    move-object v0, v14

    .end local v14    # "header":Ljava/lang/String;
    .end local p9    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .restart local v4    # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_b
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    .line 2433
    .end local v6    # "i":I
    return v5
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 1229
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1230
    return v0

    .line 1233
    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1234
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1235
    return v0

    .line 1240
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 1241
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1247
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1248
    return v0

    .line 1251
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1252
    const/4 v0, 0x1

    return v0

    .line 1255
    :cond_3
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 1256
    .local v3, "opCode":I
    if-ne v3, v4, :cond_4

    .line 1257
    return v0

    .line 1260
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v4

    invoke-virtual {v4, v3, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1262
    const/4 v0, 0x2

    return v0

    .line 1265
    :cond_5
    return v0

    .line 1242
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "opCode":I
    :catch_0
    move-exception v2

    .line 1243
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

    .line 1244
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .line 1202
    const/4 v0, -0x1

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1205
    const/4 v0, 0x1

    return v0

    .line 1208
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1209
    return v2

    .line 1212
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1213
    .local v1, "opCode":I
    if-ne v1, v0, :cond_2

    .line 1214
    return v2

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1219
    if-nez p5, :cond_3

    .line 1220
    const/4 v0, 0x2

    return v0

    .line 1224
    :cond_3
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"    # I

    .line 2641
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2642
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_1

    .line 2643
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2646
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2648
    return-void

    .line 2644
    :cond_1
    :goto_0
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2231
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2232
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2234
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2235
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 2236
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2237
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2241
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2242
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 2243
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 2245
    :cond_0
    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, "extrasSize":I
    if-eqz p1, :cond_0

    .line 995
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 996
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 997
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1000
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1001
    .local v1, "icicleSize":I
    :goto_0
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_2

    .line 1002
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

    .line 1005
    :cond_2
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1503
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1505
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1507
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1510
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1512
    :cond_2
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 27
    .param p1, "fromStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 1559
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1561
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 1562
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1563
    .local v3, "inPinnedWindowingMode":Z
    :goto_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1564
    move/from16 v13, p2

    :try_start_1
    invoke-virtual {v5, v13}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    move-object v12, v5

    .line 1566
    .local v12, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 1568
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 1572
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1573
    invoke-virtual {v12, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1574
    .local v6, "otherStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1575
    goto :goto_2

    .line 1580
    :cond_1
    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1581
    const-string v7, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetAdjustedForIme for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 1585
    :cond_2
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1572
    .end local v6    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1592
    .end local v5    # "i":I
    :cond_3
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1597
    :cond_4
    move v11, v3

    .line 1598
    .local v11, "schedulePictureInPictureModeChange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object v10, v5

    .line 1600
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1601
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1602
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    .line 1603
    .local v8, "size":I
    const/4 v5, 0x0

    move v7, v5

    .local v7, "i":I
    :goto_3
    if-ge v7, v8, :cond_7

    .line 1604
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 1605
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v15, 0x0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 1606
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v18

    .line 1605
    move-object v14, v12

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v19, p3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1608
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_6

    .line 1609
    add-int/lit8 v9, v8, -0x1

    if-ne v7, v9, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v4

    .line 1611
    .local v9, "isTopTask":Z
    :goto_4
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v17, "moveTasksToFullscreenStack - onTop"

    move-object/from16 v22, v5

    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    .local v22, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v23, v7

    .end local v7    # "i":I
    .local v23, "i":I
    move v7, v14

    move/from16 v24, v8

    .end local v8    # "size":I
    .local v24, "size":I
    move v8, v15

    move-object/from16 v25, v10

    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .local v25, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    move/from16 v10, v16

    move-object/from16 v26, v12

    .end local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .local v26, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1615
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v7, v22

    .end local v22    # "task":Lcom/android/server/wm/TaskRecord;
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    iget v8, v7, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    iget-object v10, v7, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1616
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    .line 1615
    invoke-static {v5, v8, v10}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 1617
    .end local v9    # "isTopTask":Z
    goto :goto_5

    .line 1621
    .end local v23    # "i":I
    .end local v24    # "size":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v5    # "task":Lcom/android/server/wm/TaskRecord;
    .local v7, "i":I
    .restart local v8    # "size":I
    .restart local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_6
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object v7, v5

    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v8    # "size":I
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v23    # "i":I
    .restart local v24    # "size":I
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v21, "moveTasksToFullscreenStack - NOT_onTop"

    move-object v14, v7

    move-object v15, v6

    move/from16 v20, v11

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1603
    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_5
    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v12, v26

    .end local v23    # "i":I
    .local v7, "i":I
    goto :goto_3

    .end local v24    # "size":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v8    # "size":I
    .restart local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_7
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v23    # "i":I
    .restart local v24    # "size":I
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    goto :goto_6

    .line 1600
    .end local v23    # "i":I
    .end local v24    # "size":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_8
    move-object/from16 v25, v10

    move-object/from16 v26, v12

    .line 1629
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :goto_6
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1630
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    nop

    .end local v0    # "windowingMode":I
    .end local v3    # "inPinnedWindowingMode":Z
    .end local v11    # "schedulePictureInPictureModeChange":Z
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26    # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1633
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1634
    nop

    .line 1635
    return-void

    .line 1632
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v13, p2

    :goto_7
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1633
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 549
    add-int/lit8 v0, p0, 0x1

    .line 550
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 552
    sub-int/2addr v0, v2

    .line 554
    :cond_0
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .line 2346
    if-eqz p1, :cond_2

    .line 2347
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2348
    :cond_0
    if-eqz p3, :cond_1

    .line 2349
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2351
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2353
    const/4 v0, 0x1

    return v0

    .line 2356
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1841
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1842
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1852
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1853
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1854
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1855
    invoke-virtual {p0, v1, v3, v2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    .line 1859
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_1

    .line 1861
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1862
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 1861
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1866
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .locals 2

    .line 2500
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_0

    .line 2501
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2503
    :cond_0
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2510
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2512
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2513
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for top state to be released by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_0
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2148
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 2149
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 2152
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2153
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    .line 2156
    .local v0, "type":I
    if-ne v0, v5, :cond_1

    .line 2157
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_0

    .line 2160
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 2163
    :goto_0
    sget v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v1, :cond_2

    .line 2164
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 2166
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2167
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v7, 0x2f

    .line 2168
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2167
    invoke-virtual {v1, v4, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 2171
    .end local v0    # "type":I
    :cond_3
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1281
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1308
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const/4 v8, 0x0

    .line 1309
    .local v8, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v9, 0x0

    .line 1310
    .local v9, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    .line 1311
    .local v10, "NS":I
    const/4 v11, 0x0

    .line 1312
    .local v11, "NF":I
    const/4 v12, 0x0

    .line 1313
    .local v12, "booting":Z
    const/4 v13, 0x0

    .line 1315
    .local v13, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 1316
    .local v14, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x1

    if-eqz v14, :cond_6

    .line 1317
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityIdleInternalLocked: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 1318
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1320
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1321
    if-eqz p2, :cond_1

    .line 1322
    const-wide/16 v3, -0x1

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v14

    move v15, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    goto :goto_0

    .line 1321
    :cond_1
    move v15, v5

    .line 1331
    :goto_0
    if-eqz v7, :cond_2

    .line 1332
    invoke-virtual {v14, v7}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1337
    :cond_2
    iput-boolean v15, v14, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1343
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    .line 1345
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v12

    .line 1350
    :cond_5
    const/4 v0, 0x0

    iput v0, v14, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_1

    .line 1316
    :cond_6
    move v15, v5

    .line 1353
    :goto_1
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1354
    if-eqz v14, :cond_7

    .line 1355
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1358
    :cond_7
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1359
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1364
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1366
    :cond_8
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1370
    :cond_9
    move/from16 v0, p3

    invoke-virtual {v6, v14, v15, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 1372
    .local v1, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 1373
    .end local v10    # "NS":I
    .local v2, "NS":I
    :goto_2
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v3

    .end local v11    # "NF":I
    .local v4, "NF":I
    if-lez v3, :cond_b

    .line 1374
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v3

    .line 1375
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1378
    :cond_b
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 1379
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    .line 1380
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1385
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_f

    .line 1386
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/wm/ActivityRecord;

    .line 1387
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1388
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_e

    .line 1389
    iget-boolean v10, v14, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_d

    .line 1390
    const-string v10, "activityIdleInternalLocked"

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11, v11, v10}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    goto :goto_4

    .line 1393
    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v5, v14}, Lcom/android/server/wm/ActivityStack;->stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    .line 1388
    :cond_e
    const/4 v11, 0x0

    .line 1385
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1400
    .end local v3    # "i":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v4, :cond_11

    .line 1401
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/wm/ActivityRecord;

    .line 1402
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1403
    .restart local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_10

    .line 1404
    const-string v10, "finish-idle"

    invoke-virtual {v5, v14, v15, v10}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v10

    or-int/2addr v10, v13

    move v13, v10

    .line 1400
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1408
    .end local v3    # "i":I
    :cond_11
    if-nez v12, :cond_12

    .line 1410
    if-eqz v9, :cond_12

    .line 1411
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 1412
    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1411
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1417
    .end local v3    # "i":I
    :cond_12
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;

    invoke-direct {v5, v6}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1421
    if-eqz v13, :cond_13

    .line 1422
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1425
    :cond_13
    return-object v14
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2651
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 2652
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2653
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2654
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    .line 2658
    :cond_0
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2661
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 2662
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2181
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2182
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2183
    .local v0, "s":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 2184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_0

    .line 2186
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2188
    :goto_0
    return-void
.end method

.method public attachAppLaunchLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1650
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1652
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

    .line 1654
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    const/4 v2, -0x1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v7, 0x2f

    .line 1657
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1656
    invoke-static {v2, v3, v4}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
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

    .line 1667
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method beginDeferResume()V
    .locals 1

    .line 2734
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2735
    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 386
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 388
    return v0

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 392
    return v2

    .line 394
    :cond_1
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    return v2

    .line 400
    :cond_2
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1517
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    .line 1521
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

    .line 1520
    :cond_3
    return v0

    .line 1518
    :cond_4
    :goto_0
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .locals 2
    .param p1, "allowDelay"    # Z

    .line 2191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2193
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2198
    return-void

    .line 2202
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2204
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2206
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2209
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_3

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2212
    :cond_3
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "launchingInTask"    # Z
    .param p10, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p11, "resultRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p12, "resultStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1055
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1056
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 1057
    .local v13, "isCallerRecents":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 1059
    .local v14, "startAnyPerm":I
    if-eqz v14, :cond_9

    if-eqz v13, :cond_1

    if-eqz p9, :cond_1

    goto/16 :goto_3

    .line 1065
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1067
    .local v0, "componentRestriction":I
    nop

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1067
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1069
    .local v1, "actionRestriction":I
    const-string v3, ") requires "

    const-string v4, "ActivityTaskManager"

    const-string v5, ", uid="

    const-string v15, " (pid="

    const-string v11, " from "

    if-eq v0, v12, :cond_5

    if-ne v1, v12, :cond_2

    goto/16 :goto_1

    .line 1097
    :cond_2
    const-string v12, "Appop Denial: starting "

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, "message":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v3, 0x0

    return v3

    .line 1105
    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    if-ne v0, v2, :cond_4

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1109
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    .restart local v2    # "message":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v3, 0x0

    return v3

    .line 1114
    .end local v2    # "message":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 1071
    :cond_5
    :goto_1
    if-eqz p11, :cond_6

    .line 1072
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p12

    move-object/from16 v18, p11

    move-object/from16 v19, p3

    move/from16 v20, p4

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1077
    :cond_6
    const-string v2, "Permission Denial: starting "

    const/4 v12, 0x1

    if-eq v1, v12, :cond_8

    .line 1082
    iget-boolean v12, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v12, :cond_7

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not exported from uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    goto :goto_2

    .line 1088
    .end local v2    # "msg":Ljava/lang/String;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 1078
    .end local v2    # "msg":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with revoked permission "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1063
    .end local v0    # "componentRestriction":I
    .end local v1    # "actionRestriction":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V
    .locals 15
    .param p1, "tr"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 1914
    move-object v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_0

    .line 1915
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 1917
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1918
    .local v3, "component":Landroid/content/ComponentName;
    const-string v4, "ActivityTaskManager"

    if-nez v3, :cond_1

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component for base intent of task: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1924
    :cond_1
    sget-object v0, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 1925
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1924
    invoke-static {v0, v5, v6, v3, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1926
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1928
    if-nez p2, :cond_2

    .line 1929
    return-void

    .line 1933
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1934
    .local v6, "pkg":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1935
    .local v7, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1936
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 1937
    .local v8, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ge v0, v9, :cond_a

    .line 1939
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 1940
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 1941
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowProcessController;

    .line 1942
    .local v12, "proc":Lcom/android/server/wm/WindowProcessController;
    iget v13, v12, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v14, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v13, v14, :cond_3

    .line 1944
    goto :goto_2

    .line 1946
    :cond_3
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v12, v13, :cond_4

    .line 1948
    goto :goto_2

    .line 1950
    :cond_4
    iget-object v13, v12, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1952
    goto :goto_2

    .line 1955
    :cond_5
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1958
    return-void

    .line 1961
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1963
    return-void

    .line 1968
    :cond_7
    iget-object v13, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v13, v14, v10}, Lcom/android/server/am/OpAppBootManagerInjector;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1969
    goto :goto_2

    .line 1974
    :cond_8
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    .end local v12    # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1937
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v11    # "j":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1980
    .end local v0    # "i":I
    :cond_a
    sget-object v0, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0, v9, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1983
    .local v9, "m":Landroid/os/Message;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1985
    if-eqz p3, :cond_b

    .line 1987
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    goto :goto_3

    .line 1988
    :catch_0
    move-exception v0

    .line 1989
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_3
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 591
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2175
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2178
    :cond_0
    return-void
.end method

.method createRunningTasks()Lcom/android/server/wm/RunningTasks;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 513
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2325
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2326
    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2334
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

    .line 2333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2337
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, v1, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2340
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2341
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2342
    return-void
.end method

.method endDeferResume()V
    .locals 1

    .line 2741
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2742
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    .line 1431
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1433
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 1434
    .local v16, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v4, v2

    .line 1438
    .local v4, "top_activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1

    .line 1439
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1442
    :cond_1
    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_2

    .line 1443
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

    .line 1445
    return-void

    .line 1448
    :cond_2
    and-int/lit8 v2, v15, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 1449
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1452
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " findTaskToMoveToFront"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "reason":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1454
    .local v17, "reparented":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1455
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1456
    .local v13, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1458
    iget-object v8, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1459
    invoke-virtual {v8, v1, v5, v14, v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1461
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v12, v0, :cond_4

    .line 1462
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    invoke-direct {v6, v15, v7, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1463
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x1

    move-object/from16 v7, p1

    move-object v8, v12

    move-object/from16 v26, v12

    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v26, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v12, v18

    move-object/from16 v27, v13

    .end local v13    # "bounds":Landroid/graphics/Rect;
    .local v27, "bounds":Landroid/graphics/Rect;
    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1465
    move-object/from16 v0, v26

    .line 1466
    const/16 v17, 0x1

    goto :goto_1

    .line 1461
    .end local v26    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v27    # "bounds":Landroid/graphics/Rect;
    .restart local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "bounds":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 1470
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "bounds":Landroid/graphics/Rect;
    .restart local v26    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v27    # "bounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1471
    iget-object v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_2

    .line 1478
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->resizeWindowContainer()V

    .line 1482
    .end local v26    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v27    # "bounds":Landroid/graphics/Rect;
    :cond_6
    :goto_2
    move-object v7, v0

    .end local v0    # "currentStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-nez v17, :cond_7

    .line 1483
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-direct {v6, v15, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1486
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1487
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v9, 0x0

    .line 1488
    if-nez v8, :cond_8

    move-object v10, v1

    goto :goto_3

    :cond_8
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v10, v0

    .line 1487
    :goto_3
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v11, v2

    .end local v2    # "reason":Ljava/lang/String;
    .local v11, "reason":Ljava/lang/String;
    move v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v12, v4

    .end local v4    # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "top_activity":Lcom/android/server/wm/ActivityRecord;
    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1492
    invoke-static {v8}, Lcom/oneplus/android/server/am/connor/ConnorInjector;->feed(Lcom/android/server/wm/ActivityRecord;)V

    .line 1495
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 1500
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUserLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 562
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 563
    .local v1, "candidateTaskId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    .line 564
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    return v1

    .line 566
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 567
    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "toTop"    # Z

    .line 2052
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2053
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 2054
    .local v1, "stackId":I
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 2057
    .local v2, "inMultiWindowMode":Z
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v4, v1, :cond_0

    .line 2058
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

    .line 2060
    return-object v0

    .line 2065
    :cond_0
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2066
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

    .line 2072
    :cond_2
    :goto_0
    iget v4, p2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 2073
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

    .line 2078
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

    .line 2080
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

    .line 2086
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2087
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

    .line 2089
    if-eqz v0, :cond_7

    .line 2090
    return-object v0

    .line 2092
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    .line 2093
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    .line 2092
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2095
    :cond_8
    return-object p2
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1194
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

    .line 1196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    return-object v2

    .line 1196
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method goingToSleepLocked()V
    .locals 2

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2100
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2102
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2107
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 2113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2114
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2567
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 2569
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 2573
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2575
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_0
    if-eqz p4, :cond_1

    .line 2576
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 2577
    .local v3, "inSplitScreenMode":Z
    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eqz v2, :cond_3

    .line 2578
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2579
    :cond_3
    return-void

    .line 2583
    :cond_4
    if-eqz v2, :cond_a

    .line 2584
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2585
    .local v4, "actualDisplayId":I
    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2589
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2590
    invoke-virtual {v5, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 2592
    .local v5, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v5, :cond_5

    .line 2593
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    nop

    .line 2595
    .local v0, "singleTaskInstance":Z
    :goto_2
    if-eq p3, v4, :cond_7

    .line 2599
    if-eqz v0, :cond_6

    .line 2600
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2601
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    .line 2603
    return-void

    .line 2606
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to put "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on display "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2609
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_3

    .line 2611
    :cond_7
    if-nez p5, :cond_8

    .line 2612
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2617
    :cond_8
    :goto_3
    return-void

    .line 2586
    .end local v0    # "singleTaskInstance":Z
    .end local v5    # "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2620
    .end local v4    # "actualDisplayId":I
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p5, :cond_b

    goto :goto_4

    .line 2636
    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2637
    return-void

    .line 2624
    :cond_c
    :goto_4
    nop

    .line 2625
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2626
    .local v4, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_e

    .line 2629
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    .line 2630
    invoke-virtual {v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2631
    if-ne p4, v4, :cond_d

    move v0, v1

    :cond_d
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 2633
    :cond_e
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .line 2521
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top resumed state released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    if-eqz p1, :cond_0

    const-string v1, " (due to timeout)"

    goto :goto_0

    :cond_0
    const-string v1, " (transition complete)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2526
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2

    .line 2528
    return-void

    .line 2530
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2531
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2532
    return-void
.end method

.method initPowerManagement()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 523
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 526
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 469
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 470
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 476
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 477
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 478
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 480
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 481
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 482
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 484
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 10
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1120
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

    .line 1123
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_2

    .line 1124
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1

    const-string v0, "Launch on display check: no caller info, skip check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_1
    return v2

    .line 1128
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1129
    invoke-virtual {v3, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1130
    .local v3, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 1137
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v5, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 1139
    .local v5, "startAnyPerm":I
    if-nez v5, :cond_5

    .line 1140
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_4

    const-string v0, "Launch on display check: allow launch any on display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_4
    return v2

    .line 1146
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityDisplay;->isUidPresent(I)Z

    move-result v6

    .line 1148
    .local v6, "uidPresentOnDisplay":Z
    iget-object v7, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    move-result v7

    .line 1149
    .local v7, "displayOwnerUid":I
    iget-object v8, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_9

    iget-object v8, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_9

    .line 1153
    iget v8, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    .line 1154
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_6

    const-string v0, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_6
    return v4

    .line 1159
    :cond_7
    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v8, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v0, :cond_9

    if-nez v6, :cond_9

    .line 1161
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_8

    const-string v0, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_8
    return v4

    .line 1167
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1169
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a

    const-string v0, "Launch on display check: allow launch on public display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_a
    return v2

    .line 1175
    :cond_b
    if-ne v7, p2, :cond_d

    .line 1176
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_c

    const-string v0, "Launch on display check: allow launch for owner of the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_c
    return v2

    .line 1181
    :cond_d
    if-eqz v6, :cond_f

    .line 1182
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_e

    const-string v0, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_e
    return v2

    .line 1187
    :cond_f
    const-string v0, "Launch on display check: denied"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v4

    .line 1131
    .end local v5    # "startAnyPerm":I
    .end local v6    # "uidPresentOnDisplay":Z
    .end local v7    # "displayOwnerUid":I
    :cond_10
    :goto_0
    const-string v0, "Launch on display check: display not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v4
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isStoppingNoHistoryActivity()Z
    .locals 3

    .line 2265
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2266
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2267
    const/4 v0, 0x1

    return v0

    .line 2269
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 2271
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$activityIdleInternalLocked$0$ActivityStackSupervisor()V
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$moveTasksToFullscreenStackLocked$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 0
    .param p1, "fromStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 1676
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method

.method public synthetic lambda$removeStack$2$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1874
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method logStackState()V
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 2666
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 536
    .local v0, "recentsStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 539
    :cond_0
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 2
    .param p1, "fromStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 1675
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1677
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "fromStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "onTop"    # Z

    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V

    .line 1672
    return-void
.end method

.method notifyAppTransitionDone()V
    .locals 4

    .line 1540
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1543
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1544
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1545
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_0

    .line 1546
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 1541
    .end local v1    # "taskId":I
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1549
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1550
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 2033
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "wasTrimmed"    # Z
    .param p3, "killProcess"    # Z

    .line 2037
    if-eqz p2, :cond_0

    .line 2040
    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "recent-task-trimmed"

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 2043
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->removedFromRecents()V

    .line 2044
    return-void
.end method

.method onSystemReady()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 488
    return-void
.end method

.method onUserUnlocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 496
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .locals 10
    .param p1, "idleActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "remove"    # Z
    .param p3, "processPausingActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 2276
    const/4 v0, 0x0

    .line 2278
    .local v0, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesVisible()Z

    move-result v1

    .line 2279
    .local v1, "nowVisible":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_0
    if-ltz v2, :cond_9

    .line 2280
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2282
    .local v3, "s":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    .line 2284
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

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 2286
    :cond_0
    if-eqz v1, :cond_2

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 2293
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before stopping, can hide: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2296
    :cond_2
    if-eqz p2, :cond_8

    .line 2297
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2298
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_3

    .line 2299
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v7

    goto :goto_1

    .line 2300
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v7

    :goto_1
    nop

    .line 2301
    .local v7, "shouldSleepOrShutDown":Z
    if-eqz v4, :cond_4

    if-eqz v7, :cond_8

    .line 2302
    :cond_4
    if-nez p3, :cond_5

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2305
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2307
    goto :goto_2

    .line 2310
    :cond_5
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_6
    if-nez v0, :cond_7

    .line 2312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 2314
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2316
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2279
    .end local v3    # "s":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "animating":Z
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "shouldSleepOrShutDown":Z
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2321
    .end local v2    # "activityNdx":I
    :cond_9
    return-object v0
.end method

.method readyToResume()Z
    .locals 1

    .line 2746
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
    .locals 37
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 746
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " some activities pausing..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_1
    return v5

    .line 752
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 753
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    .line 755
    .local v13, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 758
    :try_start_0
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 763
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 766
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 767
    const/4 v0, 0x0

    move v14, v0

    .end local p3    # "andResume":Z
    .local v0, "andResume":Z
    goto :goto_0

    .line 940
    .end local v0    # "andResume":Z
    .restart local p3    # "andResume":Z
    :catchall_0
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v34, v6

    move-object v4, v13

    goto/16 :goto_c

    .line 770
    :cond_3
    move/from16 v14, p3

    .end local p3    # "andResume":Z
    .local v14, "andResume":Z
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_4

    .line 771
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_1

    .line 940
    :catchall_1
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    goto/16 :goto_c

    .line 778
    :cond_4
    :goto_1
    const/4 v7, 0x1

    if-eqz p4, :cond_5

    .line 782
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v2, v8, v5, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 786
    :cond_5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v0, :cond_6

    .line 793
    :try_start_5
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 797
    :cond_6
    :try_start_6
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_7

    :try_start_7
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    :goto_2
    move v15, v0

    .line 798
    .local v15, "applicationInfoUid":I
    :try_start_8
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-ne v0, v8, :cond_8

    :try_start_9
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq v0, v15, :cond_9

    .line 799
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User ID for activity changing for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " appInfo.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " info.ai.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_9
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 811
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->isIopPreloadEnabled()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_a

    :try_start_b
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 812
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "codePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 818
    .end local v0    # "codePath":Ljava/lang/String;
    :cond_a
    :try_start_c
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 820
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 821
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v10, :cond_b

    :try_start_d
    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v9, :cond_b

    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v8, :cond_c

    .line 824
    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-ne v0, v7, :cond_c

    .line 826
    :cond_b
    :try_start_e
    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 830
    :cond_c
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v0, :cond_19

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 835
    .local v11, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v14, :cond_d

    .line 838
    :try_start_10
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v8

    .line 839
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v11, v8

    move-object v8, v0

    goto :goto_3

    .line 922
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_0
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    goto/16 :goto_b

    .line 835
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_d
    move-object v8, v0

    .line 841
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :goto_3
    :try_start_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v0, :cond_e

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " icicle="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with results="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " newIntents="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " andResume="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 847
    :cond_e
    :try_start_13
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v10, v7, v5, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 851
    goto :goto_4

    .line 849
    :catch_1
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error to change launcher resourceDirs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/16 v0, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    .line 855
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    iget v7, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v5, v9

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    .line 854
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v0, :cond_f

    .line 858
    :try_start_15
    iget-object v0, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 860
    :cond_f
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 861
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 860
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 862
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 863
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 864
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 865
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 871
    new-instance v0, Landroid/util/MergedConfiguration;

    .line 872
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 873
    .local v0, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 875
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v5, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 879
    nop

    .line 880
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 879
    invoke-static {v5, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 882
    .local v5, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 883
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v9, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 884
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 887
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    .line 888
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 p3, v0

    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local p3, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v32, v12

    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v32, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :try_start_17
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move/from16 v33, v15

    .end local v15    # "applicationInfoUid":I
    .local v33, "applicationInfoUid":I
    :try_start_18
    iget-object v15, v6, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 889
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v24
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-object/from16 v34, v6

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .local v34, "task":Lcom/android/server/wm/TaskRecord;
    :try_start_19
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object/from16 v35, v13

    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v35, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_1a
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 891
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v30
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object/from16 v36, v4

    :try_start_1b
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 883
    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    move-object/from16 v23, v15

    move-object/from16 v25, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object/from16 v31, v4

    invoke-static/range {v16 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 896
    if-eqz v14, :cond_10

    .line 897
    :try_start_1c
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .local v0, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_5

    .line 940
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catchall_2
    move-exception v0

    move-object/from16 v4, v35

    goto/16 :goto_c

    .line 922
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    :catch_2
    move-exception v0

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto/16 :goto_b

    .line 899
    .restart local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_10
    :try_start_1d
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 901
    .restart local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_5
    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 904
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 906
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-eqz v4, :cond_13

    :try_start_1e
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v4, :cond_13

    .line 911
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 912
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, v3, :cond_11

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when already running "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move-object/from16 v6, v36

    :try_start_1f
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 912
    :cond_11
    move-object/from16 v6, v36

    .line 918
    :goto_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto :goto_8

    .line 922
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catch_3
    move-exception v0

    goto :goto_7

    .line 911
    .restart local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .restart local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_12
    move-object/from16 v6, v36

    goto :goto_8

    .line 922
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catch_4
    move-exception v0

    move-object/from16 v6, v36

    :goto_7
    move-object/from16 v4, v35

    goto/16 :goto_b

    .line 906
    .restart local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .restart local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_13
    move-object/from16 v6, v36

    .line 938
    .end local v0    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :goto_8
    nop

    .line 940
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 941
    nop

    .line 943
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 944
    move-object/from16 v4, v35

    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being launched, but already in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 953
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_9

    .line 958
    :cond_15
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (starting in paused state)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_16
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "realStartActivityLocked"

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 964
    :goto_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 970
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 971
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 976
    :cond_17
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_18

    .line 977
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 980
    :cond_18
    const/4 v5, 0x1

    return v5

    .line 922
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    .restart local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_5
    move-exception v0

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto :goto_a

    .line 940
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v4, v35

    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto/16 :goto_c

    .line 922
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    .restart local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_6
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, v35

    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_a
    goto :goto_b

    .line 940
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_4
    move-exception v0

    move-object v4, v13

    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto/16 :goto_c

    .line 922
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    :catch_7
    move-exception v0

    move-object v6, v4

    move-object v4, v13

    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_b

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_8
    move-exception v0

    move-object/from16 v34, v6

    move-object v6, v4

    move-object v4, v13

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_b

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v33    # "applicationInfoUid":I
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :catch_9
    move-exception v0

    move-object/from16 v34, v6

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v33    # "applicationInfoUid":I
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_b

    .line 831
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :cond_19
    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    :try_start_20
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14    # "andResume":Z
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 922
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14    # "andResume":Z
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catch_a
    move-exception v0

    goto :goto_b

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :catch_b
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    .line 923
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v33    # "applicationInfoUid":I
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_b
    :try_start_21
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_1a

    .line 925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 926
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", giving up"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 925
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->appDied()V

    .line 928
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "2nd-crash"

    const/4 v12, 0x0

    move-object v7, v4

    move-object/from16 v5, v32

    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v5, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 930
    nop

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 930
    const/4 v6, 0x0

    return v6

    .line 935
    .end local v5    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :cond_1a
    move-object/from16 v5, v32

    .end local v32    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v5    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    const/4 v6, 0x1

    :try_start_22
    iput-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 936
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 937
    nop

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14    # "andResume":Z
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 940
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v33    # "applicationInfoUid":I
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14    # "andResume":Z
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catchall_5
    move-exception v0

    goto :goto_c

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_6
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_c

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14    # "andResume":Z
    .end local v34    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .local p3, "andResume":Z
    :catchall_7
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    move/from16 v14, p3

    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local p3    # "andResume":Z
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14    # "andResume":Z
    .restart local v34    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2556
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2557
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .line 2547
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2548
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1875
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 1882
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "pauseImmediately"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1899
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1900
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_1

    .line 1901
    invoke-virtual {v0, p4, p5}, Lcom/android/server/wm/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 1902
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1903
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1904
    iget-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_0

    .line 1905
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1907
    :cond_0
    return v1

    .line 1909
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v1, 0x0

    return v1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2535
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2536
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2535
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2538
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 6
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "totalTime"    # J
    .param p5, "launchState"    # I

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 645
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 646
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 647
    const/4 v0, 0x1

    .line 648
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 649
    if-eqz p2, :cond_0

    .line 650
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 652
    :cond_0
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 653
    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    .line 644
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 657
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 658
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 660
    :cond_3
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2216
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2218
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2219
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2220
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2223
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->executeAppTransitionForAllDisplay()V

    .line 2224
    const/4 v1, 0x1

    return v1

    .line 2226
    :cond_0
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    return-void

    .line 616
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 617
    return-void

    .line 620
    :cond_1
    const/4 v1, 0x0

    .line 622
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 623
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 624
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    .line 625
    const/4 v1, 0x1

    .line 626
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 630
    if-ne p2, v0, :cond_2

    .line 631
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 622
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 636
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 639
    :cond_4
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z

    .line 1704
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1707
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 21
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z
    .param p7, "deferResume"    # Z

    .line 1713
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_0

    .line 1715
    return-void

    .line 1718
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1719
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1720
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_1

    .line 1721
    const-string v0, "ActivityTaskManager"

    const-string v4, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    return-void

    .line 1725
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 1726
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1727
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1728
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1729
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1730
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1731
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1734
    :cond_2
    const-wide/16 v5, 0x40

    const-string v0, "am.resizeDockedStack"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1735
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1738
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1739
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1740
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_1
    invoke-virtual {v3, v2, v7, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1744
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    if-eq v9, v4, :cond_9

    if-nez v2, :cond_3

    .line 1745
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_4

    .line 1758
    :cond_3
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v9

    .line 1759
    .local v9, "display":Lcom/android/server/wm/ActivityDisplay;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1760
    .local v10, "otherTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_a

    .line 1761
    invoke-virtual {v9, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1762
    .local v12, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1763
    goto :goto_3

    .line 1765
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v13

    if-nez v13, :cond_5

    .line 1766
    goto :goto_3

    .line 1768
    :cond_5
    iget-boolean v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->isTopActivityVisible()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1771
    goto :goto_3

    .line 1773
    :cond_6
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p4

    invoke-virtual {v12, v2, v15, v13, v10}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1778
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1779
    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v16, v14

    .line 1780
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v17, v10

    goto :goto_2

    :cond_8
    move-object/from16 v17, v15

    :goto_2
    const/16 v19, 0x1

    .line 1778
    move-object v14, v12

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v20, p7

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1760
    .end local v12    # "current":Lcom/android/server/wm/ActivityStack;
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1749
    .end local v9    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v10    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v11    # "i":I
    :cond_9
    :goto_4
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1752
    const/4 v0, 0x0

    .line 1785
    :cond_a
    if-nez p7, :cond_b

    .line 1786
    move/from16 v9, p6

    :try_start_2
    invoke-virtual {v3, v0, v9}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1789
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1785
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_b
    move/from16 v9, p6

    .line 1789
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_5
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1790
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1791
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1792
    nop

    .line 1793
    return-void

    .line 1789
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_6
    move/from16 v9, p6

    :goto_7
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1790
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1791
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1798
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1799
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 1800
    const-string v1, "ActivityTaskManager"

    const-string v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-void

    .line 1808
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1809
    .local v1, "stackController":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1810
    return-void

    .line 1813
    :cond_1
    const-wide/16 v2, 0x40

    const-string v4, "am.resizePinnedStack"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1814
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1816
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1817
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .line 1818
    .local v5, "insetBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1820
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    .line 1821
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1822
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1823
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1824
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1826
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 1830
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->onPipAnimationEndResize()V

    .line 1832
    :cond_3
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1833
    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "insetBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1836
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1837
    nop

    .line 1838
    return-void

    .line 1835
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1836
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 664
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 665
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_3

    .line 670
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 674
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 675
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 684
    sget-object v1, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 686
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 684
    move-object v3, v0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 688
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    goto :goto_1

    .line 691
    :catch_0
    move-exception v2

    .line 694
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

    .line 697
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 699
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 702
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

    .line 735
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 736
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    .line 708
    const-wide/16 v1, 0x40

    :try_start_0
    const-string v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 709
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 711
    .local v0, "modifiedFlags":I
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 712
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v10, v0

    goto :goto_1

    .line 713
    :cond_1
    :goto_0
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    move v10, v0

    .line 721
    .end local v0    # "modifiedFlags":I
    .local v10, "modifiedFlags":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v11, v3

    .line 723
    .local v11, "token":J
    move-object v13, p0

    :try_start_1
    iget-object v0, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, p1

    move-object/from16 v5, p2

    move v6, v10

    move/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 729
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 723
    return-object v0

    .line 726
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .end local p5    # "filterCallingUid":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 729
    .end local v10    # "modifiedFlags":I
    .end local v11    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "flags":I
    .restart local p5    # "filterCallingUid":I
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v13, p0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 2004
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2005
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2006
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2007
    .local v1, "currentStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2009
    if-ne v1, v0, :cond_0

    .line 2011
    return v2

    .line 2015
    :cond_0
    const-string v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 2018
    :cond_1
    const-string v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 2020
    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 2021
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

    .line 2023
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2024
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 2025
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 2024
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2027
    .end local v4    # "activityNdx":I
    :cond_3
    return v2
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .line 2444
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2445
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 2437
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleIdleTimeoutLocked: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2438
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2437
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2440
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2441
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2248
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2249
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2560
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2561
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2563
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2544
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .line 2551
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2552
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2553
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 2671
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2672
    return-void

    .line 2675
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2676
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2677
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2678
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2682
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2683
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2685
    :cond_3
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 2698
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2699
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2700
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2701
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2705
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2698
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2708
    .end local v0    # "i":I
    :cond_1
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 2710
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2711
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2713
    :cond_2
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2688
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2689
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    .line 2690
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2694
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2695
    return-void

    .line 2691
    :cond_1
    :goto_0
    return-void
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1270
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 543
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .locals 1
    .param p1, "recentTasks"    # Lcom/android/server/wm/RecentTasks;

    .line 507
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 509
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2874
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2875
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .locals 8
    .param p1, "resizing"    # Z

    .line 1680
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_0

    .line 1681
    return-void

    .line 1684
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 1685
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 1687
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1694
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1695
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1696
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1697
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1699
    :cond_1
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 529
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 530
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 531
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 7
    .param p1, "timeout"    # I

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2119
    const/4 v0, 0x0

    .line 2120
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2122
    .local v1, "endTime":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 2125
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 2127
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2128
    :catch_0
    move-exception v5

    .line 2129
    :goto_1
    nop

    .line 2135
    .end local v3    # "timeRemaining":J
    goto :goto_0

    .line 2131
    .restart local v3    # "timeRemaining":J
    :cond_0
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v0, 0x1

    .line 2141
    .end local v3    # "timeRemaining":J
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2143
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .locals 33
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 2879
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v14, p4

    const/4 v3, 0x0

    .line 2883
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v0, 0x0

    .line 2884
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 2885
    .local v4, "windowingMode":I
    const/4 v5, 0x0

    if-eqz v14, :cond_0

    .line 2886
    invoke-virtual {v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_0

    .line 2887
    :cond_0
    move-object v6, v5

    :goto_0
    move-object v13, v6

    .line 2888
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_3

    .line 2889
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2890
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 2891
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2892
    move/from16 v12, p2

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2893
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    goto :goto_1

    .line 2891
    :cond_1
    move/from16 v12, p2

    .line 2896
    :cond_2
    :goto_1
    move v11, v0

    move v10, v4

    goto :goto_2

    .line 2888
    :cond_3
    move/from16 v12, p2

    move v11, v0

    move v10, v4

    .line 2896
    .end local v0    # "activityType":I
    .end local v4    # "windowingMode":I
    .local v10, "windowingMode":I
    .local v11, "activityType":I
    :goto_2
    const-string v0, "startActivityFromRecents: Task "

    const/4 v15, 0x2

    if-eq v11, v15, :cond_10

    const/4 v9, 0x3

    if-eq v11, v9, :cond_10

    .line 2903
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v4, :cond_4

    .line 2904
    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2907
    :cond_4
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 2908
    const/16 v7, 0x1081

    const/16 v8, 0x3e8

    const-string v15, ""

    invoke-virtual {v4, v7, v15, v8, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2912
    :cond_5
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2914
    const-string v15, "startActivityFromRecents: homeVisibleInSplitScreen"

    const-string v8, "splitFromRecents"

    const/4 v4, 0x0

    if-ne v10, v9, :cond_6

    .line 2915
    :try_start_0
    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2916
    :try_start_1
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v9

    .line 2915
    invoke-virtual {v7, v9, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2921
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 2923
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0x13

    invoke-virtual {v5, v7, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2979
    :catchall_0
    move-exception v0

    move-object v6, v3

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object v6, v3

    move v5, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    .line 2926
    :cond_6
    :goto_3
    :try_start_2
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v7, v13, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object v9, v5

    .line 2928
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v9, :cond_e

    .line 2935
    const/4 v7, 0x3

    if-eq v10, v7, :cond_7

    .line 2940
    :try_start_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const-string v3, "startActivityFromRecents"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    .line 2979
    :catchall_2
    move-exception v0

    move v5, v7

    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    .line 2946
    :cond_7
    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v9, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-nez v0, :cond_b

    .line 2947
    :try_start_5
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2948
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 2950
    .local v5, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2952
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v3, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 2954
    :try_start_6
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_7
    iget v7, v9, Lcom/android/server/wm/TaskRecord;->taskId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v21, v13

    move v13, v4

    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .local v21, "activityOptions":Landroid/app/ActivityOptions;
    move-object v4, v0

    move-object/from16 v22, v5

    .end local v5    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v22, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move-object v5, v6

    move v6, v7

    const/4 v12, 0x4

    const/16 v17, 0x3

    move/from16 v7, v19

    move/from16 v23, v11

    move-object v11, v8

    .end local v11    # "activityType":I
    .local v23, "activityType":I
    move-object/from16 v8, p4

    move-object/from16 v24, v9

    move/from16 v13, v17

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .local v24, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v9, v20

    :try_start_8
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2958
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2960
    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v3, v22

    const/4 v4, 0x2

    .end local v22    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 2962
    nop

    .line 2964
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 2965
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2966
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2964
    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2967
    nop

    .line 2979
    if-ne v10, v13, :cond_8

    .line 2983
    move-object/from16 v9, v24

    .end local v24    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2985
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2986
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2987
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2991
    .local v4, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2999
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 3005
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_5

    .line 2979
    .end local v0    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v24    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_8
    move-object/from16 v9, v24

    .line 3008
    .end local v24    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2967
    const/4 v4, 0x2

    return v4

    .line 2979
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v24    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v9, v24

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v8, v12

    move v5, v13

    move-object v9, v15

    const/4 v11, 0x0

    .end local v24    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_b

    .line 2960
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v22    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_4
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v9, v24

    const/4 v8, 0x0

    .end local v22    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v24    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_7

    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v5    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_5
    move-exception v0

    move-object v3, v5

    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    const/4 v13, 0x3

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v5

    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    :goto_6
    move-object v11, v8

    move v8, v4

    .end local v5    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    :goto_7
    :try_start_a
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "windowingMode":I
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 2979
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_7
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move-object v9, v15

    move v11, v8

    move v8, v12

    goto/16 :goto_b

    .line 2947
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_a
    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    move-object v11, v8

    move v8, v4

    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    goto :goto_8

    .line 2979
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_8
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v11, v8

    move v5, v7

    move-object v6, v9

    move-object v9, v15

    const/4 v8, 0x4

    move-object/from16 v32, v11

    move v11, v4

    move v4, v10

    move-object/from16 v10, v32

    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    goto/16 :goto_b

    .line 2946
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_b
    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    move-object v11, v8

    move v8, v4

    .line 2969
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    :goto_8
    :try_start_b
    iget-object v7, v9, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 2970
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 2971
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2972
    iget v3, v9, Lcom/android/server/wm/TaskRecord;->userId:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object v6, v15

    move v15, v3

    .line 2973
    .local v15, "userId":I
    :try_start_c
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    iget v4, v9, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "startActivityFromRecents"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v5, p1

    move-object/from16 v27, v6

    move/from16 v6, p2

    move/from16 v28, v8

    move-object v8, v0

    move-object/from16 v29, v9

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .local v29, "task":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v9, v16

    move/from16 v30, v10

    .end local v10    # "windowingMode":I
    .local v30, "windowingMode":I
    move-object/from16 v10, v17

    move-object/from16 v31, v11

    move-object/from16 v11, v22

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v14, p4

    move-object/from16 v16, v29

    move-object/from16 v17, v26

    :try_start_d
    invoke-virtual/range {v3 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 2979
    move/from16 v4, v30

    const/4 v5, 0x3

    .end local v30    # "windowingMode":I
    .local v4, "windowingMode":I
    if-ne v4, v5, :cond_c

    .line 2983
    move-object/from16 v6, v29

    .end local v29    # "task":Lcom/android/server/wm/TaskRecord;
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2985
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 2986
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2987
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2991
    .local v8, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    move-object/from16 v10, v31

    invoke-static {v9, v10}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2999
    move-object/from16 v9, v27

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 3005
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_9

    .line 2979
    .end local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v8    # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    .restart local v29    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_c
    move-object/from16 v6, v29

    .line 3008
    .end local v29    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_d
    :goto_9
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2973
    return v3

    .line 2979
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v29    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v30    # "windowingMode":I
    :catchall_9
    move-exception v0

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    move/from16 v4, v30

    move-object/from16 v10, v31

    const/4 v5, 0x3

    const/4 v8, 0x4

    const/4 v11, 0x0

    .end local v29    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v30    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_b

    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    :catchall_a
    move-exception v0

    move v4, v10

    move-object v10, v11

    move v5, v13

    move v11, v8

    move v8, v12

    move-object/from16 v32, v9

    move-object v9, v6

    move-object/from16 v6, v32

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move-object v9, v15

    move v11, v8

    move v8, v12

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_a
    goto :goto_b

    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_c
    move-exception v0

    move v5, v7

    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    goto :goto_b

    .line 2929
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_e
    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2930
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2931
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
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 2979
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_d
    move-exception v0

    goto :goto_b

    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_e
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    move-object v6, v3

    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
    :goto_b
    if-ne v4, v5, :cond_f

    if-eqz v6, :cond_f

    .line 2983
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2985
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 2986
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2987
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2991
    .local v5, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2999
    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 3005
    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 3008
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5    # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    :cond_f
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 2896
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v23    # "activityType":I
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "windowingMode":I
    .restart local v11    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_10
    move v4, v10

    move/from16 v23, v11

    move-object/from16 v21, v13

    .line 2897
    .end local v10    # "windowingMode":I
    .end local v11    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v21    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "activityType":I
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

.method startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1010
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1012
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    .line 1013
    .local v1, "knownToBeDead":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    return-void

    .line 1017
    :catch_0
    move-exception v2

    .line 1018
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1019
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    .end local v2    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    .line 1030
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    .line 1035
    :cond_1
    const-wide/16 v2, 0x40

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1041
    :cond_2
    sget-object v5, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1043
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "activity"

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1041
    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1044
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    nop

    .end local v4    # "msg":Landroid/os/Message;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1047
    nop

    .line 1048
    return-void

    .line 1046
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 596
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    .line 597
    .local v2, "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 599
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 600
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 601
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    .line 603
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 595
    .end local v2    # "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 609
    :cond_2
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 984
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 990
    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 2716
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2717
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2718
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2719
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2720
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2717
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2723
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .locals 6

    .line 2455
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2456
    .local v0, "prevTopActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2457
    .local v1, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 2462
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

    .line 2467
    .local v4, "prevActivityReceivedTopState":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 2468
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2469
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2470
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2474
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2478
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3

    .line 2479
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v2, :cond_3

    .line 2480
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->notifyTopResumedActivityChanged()V

    .line 2488
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2489
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2490
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    .line 2495
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2496
    return-void

    .line 2458
    .end local v4    # "prevActivityReceivedTopState":Z
    :cond_5
    :goto_1
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;
    .param p3, "startTimeMs"    # J

    .line 580
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    .line 581
    .local v0, "waitInfo":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 2726
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

    .line 2728
    return-void
.end method
