.class Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureId:Ljava/lang/String;

.field private mFreezeTaskListReordering:Z

.field private mFreezeTaskListTimeoutMs:J

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private final mHiddenTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field private final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

.field private final mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 126
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 129
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RecentTasks$eaeTjEEoVsLAhHFPccdtbbB3Lrk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTasks$eaeTjEEoVsLAhHFPccdtbbB3Lrk;

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 134
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 135
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 171
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 199
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 206
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 214
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 239
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 253
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 255
    .local v7, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 256
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 257
    new-instance v8, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v8

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 259
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 261
    const v1, 0x1110092

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 262
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 265
    new-instance v1, Lcom/android/server/wm/RecentTasksInjector;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wm/RecentTasksInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    .line 267
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskPersister"    # Lcom/android/server/wm/TaskPersister;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 171
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 199
    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 206
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 214
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 239
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 244
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 245
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 246
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 247
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentTasks;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentTasks;

    .line 115
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentTasks;

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 837
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I
    .locals 18
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1644
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 1646
    return v3

    .line 1649
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1650
    .local v2, "recentsCount":I
    iget-object v4, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1651
    .local v4, "intent":Landroid/content/Intent;
    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1652
    .local v7, "document":Z
    :goto_0
    iget v8, v1, Lcom/android/server/wm/Task;->maxRecents:I

    sub-int/2addr v8, v6

    .line 1653
    .local v8, "maxRecents":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v2, :cond_f

    .line 1654
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 1655
    .local v10, "t":Lcom/android/server/wm/Task;
    if-eq v1, v10, :cond_e

    .line 1656
    invoke-direct {v0, v1, v10}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget v11, v1, Lcom/android/server/wm/Task;->mUserId:I

    iget v12, v10, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v11, v12, :cond_2

    .line 1658
    goto/16 :goto_7

    .line 1660
    :cond_2
    iget-object v11, v10, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1661
    .local v11, "trIntent":Landroid/content/Intent;
    iget-object v12, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v13, v10, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1662
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v6

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 1663
    .local v12, "sameAffinity":Z
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4, v11}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v6

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 1664
    .local v13, "sameIntent":Z
    :goto_3
    const/4 v14, 0x0

    .line 1665
    .local v14, "multiTasksAllowed":Z
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v15

    .line 1666
    .local v15, "flags":I
    const/high16 v16, 0x10080000

    and-int v16, v15, v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x8000000

    and-int v16, v15, v16

    if-eqz v16, :cond_5

    .line 1668
    const/4 v14, 0x1

    .line 1670
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v16, v6

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    .line 1671
    .local v16, "trIsDocument":Z
    :goto_4
    if-eqz v7, :cond_7

    if-eqz v16, :cond_7

    move/from16 v17, v6

    goto :goto_5

    :cond_7
    const/16 v17, 0x0

    .line 1672
    .local v17, "bothDocuments":Z
    :goto_5
    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v17, :cond_8

    .line 1673
    goto :goto_7

    .line 1676
    :cond_8
    if-eqz v17, :cond_c

    .line 1678
    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-object v5, v10, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v6, v10, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1680
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    .line 1681
    .local v5, "sameActivity":Z
    :goto_6
    if-nez v5, :cond_a

    .line 1684
    goto :goto_7

    .line 1685
    :cond_a
    if-lez v8, :cond_b

    .line 1686
    add-int/lit8 v8, v8, -0x1

    .line 1687
    if-eqz v13, :cond_d

    if-eqz v14, :cond_b

    .line 1691
    goto :goto_7

    .line 1696
    .end local v5    # "sameActivity":Z
    :cond_b
    goto :goto_8

    :cond_c
    if-nez v7, :cond_d

    if-eqz v16, :cond_b

    .line 1698
    nop

    .line 1653
    .end local v10    # "t":Lcom/android/server/wm/Task;
    .end local v11    # "trIntent":Landroid/content/Intent;
    .end local v12    # "sameAffinity":Z
    .end local v13    # "sameIntent":Z
    .end local v14    # "multiTasksAllowed":Z
    .end local v15    # "flags":I
    .end local v16    # "trIsDocument":Z
    .end local v17    # "bothDocuments":Z
    :cond_d
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1701
    .restart local v10    # "t":Lcom/android/server/wm/Task;
    :cond_e
    :goto_8
    return v9

    .line 1703
    .end local v9    # "i":I
    .end local v10    # "t":Lcom/android/server/wm/Task;
    :cond_f
    return v3
.end method

.method private getRecentTasksImpl(IIZII)Ljava/util/ArrayList;
    .locals 16
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 903
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 905
    .local v4, "withExcluded":Z
    :goto_0
    const/4 v6, 0x4

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v6

    const-string v7, "ActivityTaskManager"

    if-nez v6, :cond_1

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is still locked. Cannot load recents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    .line 909
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 911
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v6

    .line 912
    .local v6, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 916
    .local v9, "size":I
    const/4 v10, 0x0

    .line 920
    .local v10, "numVisibleTasks":I
    iget-object v11, v0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v11}, Lcom/android/server/wm/RecentTasksInjector;->resetObservedLockedTasksCount()V

    .line 922
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_d

    .line 923
    iget-object v12, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    .line 925
    .local v12, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v12}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 926
    add-int/lit8 v10, v10, 0x1

    .line 933
    invoke-static {v1, v3}, Lcom/android/server/wm/RecentTasksInjector;->isRecentWithInvisible(II)Z

    move-result v13

    if-nez v13, :cond_3

    .line 934
    invoke-direct {v0, v12, v11, v10, v4}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v14, p1

    goto/16 :goto_3

    .line 947
    :cond_3
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v14, p1

    if-lt v13, v14, :cond_4

    .line 948
    goto/16 :goto_3

    .line 952
    :cond_4
    iget v13, v12, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 953
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, not user: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 957
    :cond_5
    iget-boolean v13, v12, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eqz v13, :cond_6

    .line 958
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, activity suspended: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 962
    :cond_6
    if-nez p3, :cond_7

    .line 965
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v13

    if-nez v13, :cond_7

    iget v13, v12, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v13, v3, :cond_7

    .line 966
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, not allowed: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 971
    :cond_7
    iget-boolean v13, v12, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-nez v13, :cond_8

    .line 973
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    .line 974
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, auto-remove without activity: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 978
    :cond_8
    and-int/lit8 v13, v1, 0x2

    if-eqz v13, :cond_9

    iget-boolean v13, v12, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v13, :cond_9

    .line 979
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    .line 980
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, unavail real act: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 985
    :cond_9
    iget-boolean v13, v12, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    if-nez v13, :cond_a

    .line 987
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v13, :cond_c

    .line 988
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping, user setup not complete: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 993
    :cond_a
    invoke-virtual {v0, v12, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 925
    :cond_b
    move/from16 v14, p1

    .line 922
    .end local v12    # "task":Lcom/android/server/wm/Task;
    :cond_c
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_d
    move/from16 v14, p1

    .line 995
    .end local v11    # "i":I
    return-object v8
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 12
    .param p1, "t1"    # Lcom/android/server/wm/Task;
    .param p2, "t2"    # Lcom/android/server/wm/Task;

    .line 2024
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    .line 2025
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    .line 2026
    .local v1, "windowingMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2027
    .local v4, "isUndefinedType":Z
    :goto_0
    if-nez v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 2028
    .local v5, "isUndefinedMode":Z
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    .line 2029
    .local v6, "otherActivityType":I
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    .line 2030
    .local v7, "otherWindowingMode":I
    if-nez v6, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    .line 2031
    .local v8, "isOtherUndefinedType":Z
    :goto_2
    if-nez v7, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v3

    .line 2035
    .local v9, "isOtherUndefinedMode":Z
    :goto_3
    if-eq v0, v6, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v10, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v2

    .line 2037
    .local v10, "isCompatibleType":Z
    :goto_5
    if-eq v1, v7, :cond_7

    if-nez v5, :cond_7

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v11, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v2

    .line 2040
    .local v11, "isCompatibleMode":Z
    :goto_7
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "quietProfileUserIds"    # Landroid/util/SparseBooleanArray;

    .line 1376
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActiveRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1381
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_1

    const-string v0, "\tisQuietProfileTask=true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_1
    return v2

    .line 1385
    :cond_2
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, v3, :cond_4

    .line 1387
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1388
    .local v0, "affiliatedTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_4

    .line 1389
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1390
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\taffiliatedWithTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_3
    return v2

    .line 1398
    .end local v0    # "affiliatedTask":Lcom/android/server/wm/Task;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskIndex"    # I
    .param p3, "numVisibleTasks"    # I
    .param p4, "skipExcludedCheck"    # Z

    .line 1490
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_3

    .line 1492
    nop

    .line 1493
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1495
    .local v2, "isExcludeFromRecents":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 1496
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityTaskManager"

    const-string v4, "\texcludeFromRecents=true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 1504
    .end local v2    # "isExcludeFromRecents":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasksInjector;->ensureAndUpdateLockedTasksInfoObserver()V

    .line 1505
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasksInjector;->ensureUserSwitchingObserved()V

    .line 1507
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasksInjector;->isInVisibleRange(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1509
    return v1

    .line 1516
    :cond_4
    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    .line 1517
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasksInjector;->getObservedLockedTasksCount()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_5

    .line 1525
    return v1

    .line 1528
    :cond_5
    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v2, :cond_7

    .line 1533
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    .line 1534
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasksInjector;->getObservedLockedTasksCount()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_6

    move v0, v1

    .line 1533
    :cond_6
    return v0

    .line 1542
    :cond_7
    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 1545
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    .line 1546
    return v1

    .line 1550
    :cond_8
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 2
    .param p0, "lhs"    # Lcom/android/server/wm/Task;
    .param p1, "rhs"    # Lcom/android/server/wm/Task;

    .line 130
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded persisted task ids for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z
    .locals 17
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskIndex"    # I

    .line 1780
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1781
    .local v3, "recentsCount":I
    move-object/from16 v4, p1

    .line 1782
    .local v4, "top":Lcom/android/server/wm/Task;
    move/from16 v5, p2

    .line 1783
    .local v5, "topIndex":I
    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    .line 1784
    iget-object v4, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1785
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1787
    :cond_0
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v7, "ActivityTaskManager"

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: adding affilliates starting at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from intial "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_1
    iget v6, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v8, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 1791
    .local v6, "sane":Z
    :goto_1
    move v8, v5

    .line 1792
    .local v8, "endIndex":I
    move-object v11, v4

    .line 1793
    .local v11, "prev":Lcom/android/server/wm/Task;
    :goto_2
    const-string v12, " @"

    const-string v13, "Bad chain @"

    if-ge v8, v3, :cond_d

    .line 1794
    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    .line 1795
    .local v14, "cur":Lcom/android/server/wm/Task;
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: looking at next chain @"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_3
    const/4 v9, -0x1

    if-ne v14, v4, :cond_5

    .line 1799
    iget-object v15, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v15, :cond_4

    iget v15, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-eq v15, v9, :cond_6

    .line 1800
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": first task has next affiliate: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/4 v6, 0x0

    .line 1803
    move-object/from16 v16, v4

    goto/16 :goto_4

    .line 1807
    :cond_5
    iget-object v15, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v15, v11, :cond_c

    iget v15, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    iget v10, v11, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v15, v10, :cond_6

    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 1818
    :cond_6
    iget v10, v14, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v15, ": last task "

    move-object/from16 v16, v4

    .end local v4    # "top":Lcom/android/server/wm/Task;
    .local v16, "top":Lcom/android/server/wm/Task;
    const-string v4, " has previous affiliate "

    if-ne v10, v9, :cond_8

    .line 1820
    iget-object v9, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v9, :cond_7

    .line 1821
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v6, 0x0

    .line 1826
    :cond_7
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: end of chain @"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1830
    :cond_8
    iget-object v9, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v10, ": task "

    if-nez v9, :cond_9

    .line 1831
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v6, 0x0

    .line 1836
    goto/16 :goto_4

    .line 1839
    :cond_9
    iget v4, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v9, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v4, v9, :cond_a

    .line 1840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has affiliated id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but should be "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v6, 0x0

    .line 1845
    goto :goto_4

    .line 1847
    :cond_a
    move-object v11, v14

    .line 1848
    add-int/lit8 v8, v8, 0x1

    .line 1849
    if-lt v8, v3, :cond_b

    .line 1850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad chain ran off index "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v6, 0x0

    .line 1853
    goto :goto_4

    .line 1855
    .end local v14    # "cur":Lcom/android/server/wm/Task;
    :cond_b
    move-object/from16 v4, v16

    goto/16 :goto_2

    .line 1807
    .end local v16    # "top":Lcom/android/server/wm/Task;
    .restart local v4    # "top":Lcom/android/server/wm/Task;
    .restart local v14    # "cur":Lcom/android/server/wm/Task;
    :cond_c
    move-object/from16 v16, v4

    .line 1809
    .end local v4    # "top":Lcom/android/server/wm/Task;
    .restart local v16    # "top":Lcom/android/server/wm/Task;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": middle task "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has bad next affiliate "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", expected "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v6, 0x0

    .line 1815
    goto :goto_4

    .line 1793
    .end local v14    # "cur":Lcom/android/server/wm/Task;
    .end local v16    # "top":Lcom/android/server/wm/Task;
    .restart local v4    # "top":Lcom/android/server/wm/Task;
    :cond_d
    move-object/from16 v16, v4

    .line 1856
    .end local v4    # "top":Lcom/android/server/wm/Task;
    .restart local v16    # "top":Lcom/android/server/wm/Task;
    :cond_e
    :goto_4
    if-eqz v6, :cond_f

    .line 1857
    if-ge v8, v2, :cond_f

    .line 1858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": did not extend to task "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v6, 0x0

    .line 1863
    :cond_f
    if-eqz v6, :cond_13

    .line 1866
    move v4, v5

    .local v4, "i":I
    :goto_5
    const-string v9, " to "

    if-gt v4, v8, :cond_11

    .line 1867
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRecent: moving affiliated "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v9, v4, v5

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_10
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 1870
    .local v9, "cur":Lcom/android/server/wm/Task;
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v12, v4, v5

    invoke-virtual {v10, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1866
    .end local v9    # "cur":Lcom/android/server/wm/Task;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1872
    .end local v4    # "i":I
    :cond_11
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: done moving tasks  "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_12
    const/4 v4, 0x1

    return v4

    .line 1878
    :cond_13
    const/4 v4, 0x0

    return v4
.end method

.method private notifyTaskAdded(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/Task;)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    .line 466
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "wasTrimmed"    # Z
    .param p3, "killProcess"    # Z

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    .line 473
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 13
    .param p1, "start"    # I

    .line 1708
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1709
    .local v0, "startTask":Lcom/android/server/wm/Task;
    iget v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1712
    .local v1, "affiliateId":I
    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    .line 1717
    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1718
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 1722
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1723
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_2

    .line 1724
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1725
    .local v4, "task":Lcom/android/server/wm/Task;
    iget v5, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_1

    .line 1726
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1727
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1733
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1737
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1738
    .local v2, "first":Lcom/android/server/wm/Task;
    iput-boolean v3, v2, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1739
    iget-object v5, v2, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v6, 0x0

    const-string v7, "ActivityTaskManager"

    if-eqz v5, :cond_3

    .line 1740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-virtual {v2, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1742
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1745
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1746
    .local v5, "tmpSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_6

    .line 1747
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 1748
    .local v9, "next":Lcom/android/server/wm/Task;
    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 1749
    .local v10, "prev":Lcom/android/server/wm/Task;
    iget-object v11, v9, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eq v11, v10, :cond_4

    .line 1750
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1753
    invoke-virtual {p0, v9, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1755
    :cond_4
    iget-object v11, v10, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eq v11, v9, :cond_5

    .line 1756
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {v10, v9}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1759
    invoke-virtual {p0, v10, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1761
    :cond_5
    iput-boolean v3, v10, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1746
    .end local v9    # "next":Lcom/android/server/wm/Task;
    .end local v10    # "prev":Lcom/android/server/wm/Task;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1764
    .end local v8    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1765
    .local v3, "last":Lcom/android/server/wm/Task;
    iget-object v8, v3, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_7

    .line 1766
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1768
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1772
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1773
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1776
    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1613
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1615
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 1616
    .local v0, "removeIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1618
    return-void

    .line 1624
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1625
    .local v1, "removedTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    .line 1626
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1633
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for addition of task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1637
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 636
    const-string v0, "ActivityTaskManager"

    if-gtz p1, :cond_0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 643
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_2

    .line 644
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove RecentTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when finishing user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 641
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 649
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private removeUnreachableHiddenTasks(I)V
    .locals 5
    .param p1, "windowingMode"    # I

    .line 1587
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1588
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1589
    .local v1, "hiddenTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1594
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 1595
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1599
    goto :goto_2

    .line 1601
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1602
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v3, 0x0

    const-string v4, "remove-hidden-task"

    invoke-virtual {v2, v1, v3, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_2

    .line 1591
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1592
    nop

    .line 1587
    .end local v1    # "hiddenTask":Lcom/android/server/wm/Task;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1605
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 573
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 574
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 551
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 549
    .end local v2    # "userId":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 557
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 558
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 559
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task ids found for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mPersistedTaskIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 557
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 570
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .locals 12

    .line 1253
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_0

    .line 1255
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1268
    .local v0, "recentsCount":I
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasksInjector;->ensureAndUpdateLockedTasksInfoObserver()V

    .line 1269
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasksInjector;->ensureUserSwitchingObserved()V

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasksInjector;->getLockedRecentsCount()I

    move-result v1

    .line 1273
    .local v1, "lockedRecentsCount":I
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v3, "ActivityTaskManager"

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/RecentTasksInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 1274
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimInactiveRecentTasks recentsCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lockedRecentsCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mGlobalMaxNumTasks="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    add-int/2addr v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v2, :cond_7

    .line 1282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1283
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RecentTasksInjector;->isRecentTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1286
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/server/wm/RecentTasksInjector;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_4

    .line 1287
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t trim locked task while checking max ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 1291
    add-int/lit8 v1, v1, -0x1

    .line 1292
    goto :goto_0

    .line 1296
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_5
    goto :goto_1

    .line 1294
    :catch_0
    move-exception v2

    .line 1295
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    const-string v7, "Exception while checking recent task locked state"

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1299
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1300
    add-int/lit8 v0, v0, -0x1

    .line 1301
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming over max-recents task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_6
    goto :goto_0

    .line 1306
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v2

    .line 1307
    .local v2, "profileUserIds":[I
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1308
    array-length v6, v2

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_a

    aget v8, v2, v7

    .line 1309
    .local v8, "userId":I
    invoke-virtual {p0, v8}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 1310
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1311
    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1313
    :cond_8
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " quiet="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 1314
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1313
    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    .end local v8    # "userId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1318
    :cond_a
    const/4 v6, 0x0

    .line 1322
    .local v6, "numVisibleTasks":I
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v7}, Lcom/android/server/wm/RecentTasksInjector;->resetObservedLockedTasksCount()V

    .line 1324
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    .line 1325
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    .line 1327
    .local v8, "task":Lcom/android/server/wm/Task;
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1328
    iget-boolean v9, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v9, :cond_b

    .line 1330
    add-int/lit8 v7, v7, 0x1

    .line 1331
    goto :goto_3

    .line 1334
    :cond_b
    invoke-virtual {p0, v8}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1336
    add-int/lit8 v7, v7, 0x1

    .line 1337
    goto :goto_3

    .line 1339
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 1340
    invoke-direct {p0, v8, v7, v6, v4}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1341
    invoke-virtual {p0, v8}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_4

    .line 1348
    :cond_d
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trimming out-of-range visible task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1343
    :cond_e
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 1344
    goto :goto_3

    .line 1354
    :cond_f
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trimming inactive task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_10
    :goto_5
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1363
    nop

    .line 1364
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_11

    move v9, v5

    goto :goto_6

    :cond_11
    move v9, v4

    .line 1366
    .local v9, "isExcludeFromRecents":Z
    :goto_6
    if-nez v9, :cond_12

    move v10, v5

    goto :goto_7

    :cond_12
    move v10, v4

    :goto_7
    invoke-direct {p0, v8, v10, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1368
    invoke-virtual {p0, v8, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1369
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "isExcludeFromRecents":Z
    goto/16 :goto_3

    .line 1370
    .end local v7    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/wm/Task;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1066
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1074
    .local v0, "canTrimTask":Z
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1075
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/RecentTasks;->removeUnreachableHiddenTasks(I)V

    .line 1078
    :cond_1
    iget v3, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    iget v3, p1, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget v3, p1, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    .line 1082
    .local v3, "isAffiliated":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1086
    .local v4, "recentsCount":I
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_5

    .line 1087
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: not adding voice interaction "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_4
    return-void

    .line 1092
    :cond_5
    if-nez v3, :cond_7

    if-lez v4, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_7

    .line 1093
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: already at top: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_6
    return-void

    .line 1098
    :cond_7
    if-eqz v3, :cond_9

    if-lez v4, :cond_9

    iget-boolean v6, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v6, :cond_9

    iget v6, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1099
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v6, v7, :cond_9

    .line 1100
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: affiliated "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at top when adding "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_8
    return-void

    .line 1105
    :cond_9
    const/4 v6, 0x0

    .line 1109
    .local v6, "needAffiliationFix":Z
    iget-boolean v7, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v7, :cond_c

    .line 1110
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1111
    .local v7, "taskIndex":I
    if-ltz v7, :cond_b

    .line 1112
    if-nez v3, :cond_c

    .line 1113
    iget-boolean v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v2, :cond_a

    .line 1116
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1117
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1121
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v2

    iget-object v8, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ColdStartInjector;->addHistoryTask(Landroid/content/ComponentName;)V

    .line 1124
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_a

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: moving to top "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_a
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1130
    return-void

    .line 1133
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Task with inRecent not in recents: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v6, 0x1

    .line 1138
    .end local v7    # "taskIndex":I
    :cond_c
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: trimming tasks for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/Task;)V

    .line 1141
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1142
    if-eqz v3, :cond_17

    if-eqz v6, :cond_e

    goto/16 :goto_4

    .line 1152
    :cond_e
    if-eqz v3, :cond_19

    .line 1155
    iget-object v2, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1156
    .local v2, "other":Lcom/android/server/wm/Task;
    if-nez v2, :cond_f

    .line 1157
    iget-object v2, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1159
    :cond_f
    if-eqz v2, :cond_15

    .line 1160
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1161
    .local v7, "otherIndex":I
    if-ltz v7, :cond_13

    .line 1164
    iget-object v8, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, v8, :cond_10

    .line 1167
    add-int/lit8 v8, v7, 0x1

    .local v8, "taskIndex":I
    goto :goto_2

    .line 1171
    .end local v8    # "taskIndex":I
    :cond_10
    move v8, v7

    .line 1173
    .restart local v8    # "taskIndex":I
    :goto_2
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: new affiliated task added at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_11
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1180
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ColdStartInjector;->addHistoryTask(Landroid/content/ComponentName;)V

    .line 1184
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1186
    return-void

    .line 1191
    :cond_12
    const/4 v6, 0x1

    .line 1192
    .end local v8    # "taskIndex":I
    goto :goto_3

    .line 1193
    :cond_13
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_14
    const/4 v6, 0x1

    .line 1197
    .end local v7    # "otherIndex":I
    :goto_3
    goto :goto_5

    .line 1198
    :cond_15
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_16
    const/4 v6, 0x1

    goto :goto_5

    .line 1145
    .end local v2    # "other":Lcom/android/server/wm/Task;
    :cond_17
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1147
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: adding "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v2

    iget-object v7, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ColdStartInjector;->addHistoryTask(Landroid/content/ComponentName;)V

    .line 1204
    :cond_19
    :goto_5
    if-eqz v6, :cond_1b

    .line 1205
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_1a

    const-string v2, "addRecent: regrouping affiliations"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_1a
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 1210
    :cond_1b
    if-eqz v0, :cond_1c

    .line 1211
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 1213
    :cond_1c
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1214
    return-void
.end method

.method addToBottom(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    const/4 v0, 0x0

    return v0

    .line 1226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1227
    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 706
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 707
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 708
    .local v2, "task":Lcom/android/server/wm/Task;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, p3, :cond_0

    .line 709
    goto :goto_3

    .line 712
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 713
    .local v3, "cn":Landroid/content/ComponentName;
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 714
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    .line 715
    .local v5, "sameComponent":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 716
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v7, "disabled-package"

    invoke-virtual {v6, v2, v4, v1, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 706
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "sameComponent":Z
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 719
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method cleanupLocked(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 728
    .local v0, "recentsCount":I
    if-nez v0, :cond_0

    .line 731
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 736
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 738
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 739
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_10

    .line 740
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 741
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v4, p1, :cond_1

    .line 743
    goto/16 :goto_5

    .line 745
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2

    .line 747
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    goto/16 :goto_5

    .line 752
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    .line 753
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 754
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_4

    .line 759
    :try_start_0
    iget-object v6, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 765
    nop

    .line 766
    if-nez v4, :cond_3

    .line 767
    sget-object v4, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 769
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 762
    :catch_0
    move-exception v5

    .line 764
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 771
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const-string v7, "Making recent unavailable: "

    const/high16 v8, 0x800000

    const/4 v9, 0x0

    if-ne v4, v6, :cond_a

    .line 775
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v10, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 776
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 777
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_6

    .line 779
    :try_start_1
    iget-object v10, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-interface {v1, v10, v11, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v10

    .line 784
    nop

    .line 785
    if-nez v6, :cond_5

    .line 786
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 788
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 781
    :catch_1
    move-exception v5

    .line 783
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 790
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    sget-object v10, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v10, :cond_9

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_7

    goto :goto_3

    .line 798
    :cond_7
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_8

    iget-boolean v8, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_8
    iput-boolean v9, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 802
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_5

    .line 793
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_9
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    goto/16 :goto_5

    .line 803
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_a
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_d

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_d

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v8

    if-nez v6, :cond_b

    goto :goto_4

    .line 815
    :cond_b
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_c

    iget-boolean v6, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making recent available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    goto :goto_5

    .line 806
    :cond_d
    :goto_4
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 811
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 806
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_e
    iput-boolean v9, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 739
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_f
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 824
    .end local v2    # "i":I
    :cond_10
    const/4 v2, 0x0

    .line 825
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 826
    :goto_6
    if-ge v2, v0, :cond_11

    .line 827
    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_6

    .line 830
    :cond_11
    return-void
.end method

.method containsTaskId(II)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 523
    invoke-direct {p0, p2}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "stripExtras"    # Z

    .line 2002
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2003
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 2005
    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2006
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 2010
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    .line 2011
    sget-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_1

    .line 2012
    iget v1, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0, v1}, Lcom/android/server/wm/OpAppLockerInjector;->isTopAppLocked(Landroid/app/ActivityManager$RecentTaskInfo;I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    .line 2015
    :cond_1
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 1882
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReordering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 1887
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1886
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHiddenTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    return-void

    .line 1896
    :cond_1
    const/4 v0, 0x0

    .line 1897
    .local v0, "printedAnything":Z
    const/4 v1, 0x0

    .line 1898
    .local v1, "printedHeader":Z
    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1899
    .local v9, "size":I
    const/4 v2, 0x0

    move v10, v0

    .end local v0    # "printedAnything":Z
    .local v2, "i":I
    .local v10, "printedAnything":Z
    :goto_0
    const-string v11, "    "

    const-string v12, ": "

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v2, v9, :cond_d

    .line 1900
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1901
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_a

    .line 1902
    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1903
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1905
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1904
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v14

    goto :goto_1

    :cond_2
    move v3, v13

    .line 1906
    .local v3, "match":Z
    :goto_1
    if-nez v3, :cond_4

    .line 1907
    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 1908
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 1910
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1909
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v14

    goto :goto_2

    :cond_3
    move v4, v13

    :goto_2
    or-int/2addr v3, v4

    .line 1912
    :cond_4
    if-nez v3, :cond_6

    .line 1913
    iget-object v4, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1914
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v14

    goto :goto_3

    :cond_5
    move v4, v13

    :goto_3
    or-int/2addr v3, v4

    .line 1916
    :cond_6
    if-nez v3, :cond_8

    .line 1917
    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1918
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v13, v14

    goto :goto_4

    :cond_7
    nop

    :goto_4
    or-int/2addr v3, v13

    .line 1920
    :cond_8
    if-nez v3, :cond_9

    .line 1921
    iget-object v4, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1923
    :cond_9
    if-nez v3, :cond_a

    .line 1924
    goto :goto_5

    .line 1928
    .end local v3    # "match":Z
    :cond_a
    if-nez v1, :cond_b

    .line 1929
    const-string v3, "  Recent tasks:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    const/4 v1, 0x1

    .line 1931
    const/4 v10, 0x1

    .line 1933
    :cond_b
    const-string v3, "  * Recent #"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1935
    if-eqz p2, :cond_c

    .line 1936
    invoke-virtual {v0, v7, v11}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1899
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1941
    .end local v2    # "i":I
    :cond_d
    iget-boolean v0, v6, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v0, :cond_1b

    .line 1943
    const/4 v15, 0x0

    .line 1944
    .end local v1    # "printedHeader":Z
    .local v15, "printedHeader":Z
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1945
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v4

    const/16 v5, 0x3e8

    .line 1944
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 1946
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1947
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1948
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v8, :cond_17

    .line 1949
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_e

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1950
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1952
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1951
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v14

    goto :goto_7

    :cond_e
    move v3, v13

    .line 1953
    .restart local v3    # "match":Z
    :goto_7
    if-nez v3, :cond_10

    .line 1954
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1955
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v14

    goto :goto_8

    :cond_f
    move v4, v13

    :goto_8
    or-int/2addr v3, v4

    .line 1957
    :cond_10
    if-nez v3, :cond_12

    .line 1958
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_11

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1959
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v14

    goto :goto_9

    :cond_11
    move v4, v13

    :goto_9
    or-int/2addr v3, v4

    .line 1961
    :cond_12
    if-nez v3, :cond_14

    .line 1962
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_13

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1963
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v14

    goto :goto_a

    :cond_13
    move v4, v13

    :goto_a
    or-int/2addr v3, v4

    .line 1965
    :cond_14
    if-nez v3, :cond_16

    .line 1966
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_15

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1967
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v14

    goto :goto_b

    :cond_15
    move v4, v13

    :goto_b
    or-int/2addr v3, v4

    .line 1969
    :cond_16
    if-nez v3, :cond_17

    .line 1970
    goto :goto_c

    .line 1973
    .end local v3    # "match":Z
    :cond_17
    if-nez v15, :cond_19

    .line 1974
    if-eqz v10, :cond_18

    .line 1976
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1978
    :cond_18
    const-string v3, "  Visible recent tasks (most recent first):"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    const/4 v3, 0x1

    .line 1980
    .end local v15    # "printedHeader":Z
    .local v3, "printedHeader":Z
    const/4 v4, 0x1

    move v15, v3

    move v10, v4

    .line 1983
    .end local v3    # "printedHeader":Z
    .restart local v15    # "printedHeader":Z
    :cond_19
    const-string v3, "  * RecentTaskInfo #"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {v2, v7, v11}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1946
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_1a
    move v1, v15

    .line 1988
    .end local v0    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v15    # "printedHeader":Z
    .local v1, "printedHeader":Z
    :cond_1b
    if-nez v10, :cond_1c

    .line 1989
    const-string v0, "  (nothing)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    :cond_1c
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/RecentTasksInjector;->dumpLockedTasks(Ljava/io/PrintWriter;)V

    .line 1996
    return-void
.end method

.method flush()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 592
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 593
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPersister;->flush()V

    .line 595
    return-void

    .line 593
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 846
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 847
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 851
    .local v3, "task":Lcom/android/server/wm/Task;
    iget v4, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v4, p1, :cond_0

    .line 852
    goto :goto_1

    .line 854
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 855
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 856
    goto :goto_1

    .line 858
    :cond_1
    new-instance v5, Lcom/android/server/wm/AppTaskImpl;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v7, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v5, v6, v7, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 859
    .local v5, "taskImpl":Lcom/android/server/wm/AppTaskImpl;
    invoke-virtual {v5}, Lcom/android/server/wm/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskImpl":Lcom/android/server/wm/AppTaskImpl;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method getCurrentProfileIds()[I
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1002
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1003
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1004
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1007
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1008
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 1009
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1011
    :cond_1
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1003
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 866
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 867
    .local v0, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v1

    .line 868
    .local v1, "profileIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 869
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 7

    .line 1028
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1029
    .local v0, "res":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1030
    .local v1, "size":I
    const/4 v2, 0x0

    .line 1034
    .local v2, "numVisibleTasks":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentTasksInjector:Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasksInjector;->resetObservedLockedTasksCount()V

    .line 1036
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1037
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1038
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1039
    add-int/lit8 v2, v2, 0x1

    .line 1040
    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1041
    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1036
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1045
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 894
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentFeatureId()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mFeatureId:Ljava/lang/String;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/wm/Task;
    .locals 4
    .param p1, "id"    # I

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1053
    .local v0, "recentsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1055
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_0

    .line 1056
    return-object v2

    .line 1053
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p1, "userId"    # I

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method isCallerRecents(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 411
    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isFreezeTaskListReorderingSet()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 428
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1555
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1558
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1559
    return v1

    .line 1564
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1565
    return v3

    .line 1568
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1570
    .local v2, "rootHomeTask":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_2

    .line 1571
    return v3

    .line 1574
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1578
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1579
    return v3

    .line 1582
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gez v5, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    return v1
.end method

.method isUserRunning(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method isVisibleRecentTask(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1406
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " minVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maxVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " inactiveDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intentFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1406
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/4 v5, 0x5

    if-eq v0, v5, :cond_b

    goto :goto_0

    .line 1423
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    .line 1425
    return v3

    .line 1431
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_a

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 1460
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1461
    return v3

    .line 1440
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1444
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_6

    .line 1445
    if-eqz v0, :cond_5

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ttop="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1448
    :cond_5
    const-string v2, "\ttask.getStack() is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 1455
    return v3

    .line 1469
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1470
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_8

    .line 1471
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1472
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1473
    return v3

    .line 1478
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 1479
    return v3

    .line 1482
    :cond_9
    const/4 v1, 0x1

    return v1

    .line 1433
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_a
    return v3

    .line 1419
    :cond_b
    return v3
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 358
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const v0, 0x10e0087

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 361
    const v0, 0x10e007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 363
    :cond_0
    const/4 v0, 0x0

    const-string v1, "ro.recents.grid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const v0, 0x10e0086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 366
    const v0, 0x10e007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 369
    :cond_1
    const v0, 0x10e0085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 371
    const v0, 0x10e007b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 374
    :goto_0
    const v0, 0x10e000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 376
    .local v0, "sessionDurationHrs":I
    if-lez v0, :cond_2

    .line 377
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_1

    .line 378
    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 379
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 386
    const v0, 0x1040251

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "rawRecentsComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 393
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 395
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 396
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 397
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 398
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 399
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load application info for recents component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 488
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 491
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 492
    .local v0, "preaddedTasks":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 493
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 496
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1
    goto :goto_0

    .line 498
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v1

    .line 500
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Task;>;"
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 502
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 505
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 506
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 508
    :cond_3
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    return-void

    .line 544
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 545
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/Task;Z)V

    .line 546
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .locals 3
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 669
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 674
    .local v0, "task":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->isTaskWhitelisted(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 672
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 678
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .line 652
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 653
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 654
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 655
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 656
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eq v4, p2, :cond_1

    .line 659
    iput-boolean p2, v3, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 660
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 661
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v6, "suspended-package"

    invoke-virtual {v5, v3, v4, v2, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 663
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 653
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    return-void
.end method

.method registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method remove(Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1234
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1236
    if-eqz p1, :cond_2

    .line 1237
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1238
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    return-void

    .line 1239
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1240
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    return-void

    .line 1242
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, "taskPkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_2

    .line 1244
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0, v3, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1247
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "taskPkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method removeAllVisibleTasks(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v0

    .line 694
    .local v0, "profileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 695
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 696
    .local v3, "task":Lcom/android/server/wm/Task;
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 699
    invoke-direct {p0, v3, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 694
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 702
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 683
    .local v2, "task":Lcom/android/server/wm/Task;
    nop

    .line 684
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v4, p2, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 688
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v5, "remove-package-task"

    invoke-virtual {v4, v2, v1, v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 681
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "topTask"    # Lcom/android/server/wm/Task;

    .line 313
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    if-eqz p1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 331
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    .line 332
    return-void
.end method

.method resetFreezeTaskListReorderingOnTimeout()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 343
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 344
    .local v2, "topTask":Lcom/android/server/wm/Task;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 345
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "topTask":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method setFreezeTaskListReordering()V
    .locals 4

    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    .line 299
    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method

.method setFreezeTaskListTimeout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 284
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 285
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .locals 0
    .param p1, "globalMaxNumTasks"    # I

    .line 279
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 280
    return-void
.end method

.method setParameters(IIJ)V
    .locals 0
    .param p1, "minNumVisibleTasks"    # I
    .param p2, "maxNumVisibleTasks"    # I
    .param p3, "activeSessionDurationMs"    # J

    .line 272
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 273
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 274
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 275
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserLocked(I)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 632
    return-void
.end method

.method unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 5

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 604
    .local v0, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 605
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 607
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "len":I
    .local v4, "len":I
    aput v3, v0, v1

    move v1, v4

    .line 605
    .end local v3    # "userId":I
    .end local v4    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 613
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    .line 615
    :cond_2
    return-object v0
.end method
