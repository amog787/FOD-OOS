.class Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;,
        Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPORT_CONFIGS:I = 0x20000c00

.field private static final REPORT_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskOrganizerController"


# instance fields
.field private mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mLastSentTaskInfos:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskInfoChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskOrganizerStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskOrganizerController;->EMPTY_LIST:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    .line 271
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    .line 280
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 281
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    return-object v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method static synthetic lambda$registerTaskOrganizer$0(ILcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "windowingMode"    # I
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method public createRootTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I

    .line 400
    const-string v0, "createRootTask()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 404
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 405
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_0

    .line 406
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    return-object v4

    .line 409
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x1

    move v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 412
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 413
    .local v5, "out":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    return-object v5

    .line 415
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "out":Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "windowingMode":I
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "windowingMode":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw v2
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 7
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 423
    const-string v0, "deleteRootTask()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 426
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 427
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 428
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    return v4

    .line 429
    :cond_0
    :try_start_2
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_1

    .line 433
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 434
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    return v4

    .line 430
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to delete task not created by organizer task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 435
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 437
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw v2
.end method

.method dispatchPendingTaskInfoChanges()V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 449
    return-void
.end method

.method dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 452
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 460
    .local v0, "lastInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_1

    .line 461
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 465
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    iget-boolean v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 469
    invoke-static {v3, v4}, Landroid/app/ActivityManager$TaskDescription;->equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    .line 470
    .local v3, "changed":Z
    :goto_1
    if-nez v3, :cond_7

    .line 471
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 472
    .local v4, "cfgChanges":I
    const/high16 v5, 0x20000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_4

    .line 473
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v6, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v5

    long-to-int v5, v5

    goto :goto_2

    .line 475
    :cond_4
    move v5, v1

    :goto_2
    nop

    .line 476
    .local v5, "winCfgChanges":I
    and-int/lit8 v6, v5, 0x3

    if-nez v6, :cond_5

    .line 477
    const v6, -0x20000001

    and-int/2addr v4, v6

    .line 479
    :cond_5
    const v6, 0x20000c00

    and-int/2addr v6, v4

    if-eqz v6, :cond_6

    move v1, v2

    :cond_6
    move v3, v1

    .line 481
    .end local v4    # "cfgChanges":I
    .end local v5    # "winCfgChanges":I
    :cond_7
    if-nez v3, :cond_8

    if-nez p2, :cond_8

    .line 482
    return-void

    .line 484
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 485
    .local v1, "newInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 491
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 496
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 497
    invoke-interface {v4}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 496
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 498
    .local v2, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v2, :cond_9

    .line 499
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 502
    .end local v2    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskOrganizerController:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Per windowing mode:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 668
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 669
    .local v3, "windowingMode":I
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 670
    .local v4, "taskOrgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 673
    iget-object v7, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 674
    .local v7, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$700(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v8

    .line 675
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$800(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 678
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 672
    .end local v7    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v9    # "k":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 667
    .end local v3    # "windowingMode":I
    .end local v4    # "taskOrgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 683
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 684
    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 9
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 563
    const-string v0, "getChildTasks()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 566
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 567
    if-eqz p1, :cond_6

    .line 570
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 571
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 572
    const-string v5, "TaskOrganizerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get children of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " because it is not valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    return-object v4

    .line 575
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 576
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_1

    .line 577
    const-string v6, "TaskOrganizerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not a task..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    return-object v4

    .line 581
    :cond_1
    :try_start_3
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v6, :cond_2

    .line 582
    const-string v6, "TaskOrganizerController"

    const-string v7, "Can only get children of root tasks created via createRootTask"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return-object v4

    .line 585
    :cond_2
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    .line 587
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 588
    .local v7, "child":Lcom/android/server/wm/Task;
    if-nez v7, :cond_3

    goto :goto_1

    .line 589
    :cond_3
    if-eqz p2, :cond_4

    .line 590
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v8

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 591
    goto :goto_1

    .line 593
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v7    # "child":Lcom/android/server/wm/Task;
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 595
    .end local v6    # "i":I
    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 598
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    return-object v4

    .line 568
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_6
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t get children of null parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3

    .line 596
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 598
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw v2
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 6
    .param p1, "displayId"    # I

    .line 506
    const-string v0, "getImeTarget()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 509
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 510
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 511
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 512
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 517
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_1

    .line 518
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 518
    return-object v4

    .line 520
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    return-object v4

    .line 513
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    return-object v4

    .line 521
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 523
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw v2
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 604
    const-string v0, "getRootTasks()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 607
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 608
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 609
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 610
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_3

    .line 613
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "tdaNdx":I
    :goto_0
    if-ltz v5, :cond_2

    .line 615
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 616
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "sNdx":I
    :goto_1
    if-ltz v7, :cond_1

    .line 617
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 618
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_0

    .line 619
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v9

    invoke-static {p2, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 620
    goto :goto_2

    .line 622
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 614
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "sNdx":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 625
    .end local v5    # "tdaNdx":I
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    return-object v4

    .line 611
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v4

    .line 626
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 628
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    throw v2
.end method

.method getTaskOrganizer(I)Landroid/window/ITaskOrganizer;
    .locals 3
    .param p1, "windowingMode"    # I

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/wm/TaskOrganizerController;->EMPTY_LIST:Ljava/util/LinkedList;

    .line 375
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 376
    .local v0, "organizer":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    return-object v1

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 380
    .local v2, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v2, :cond_1

    .line 381
    return-object v1

    .line 383
    :cond_1
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-object v1
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 650
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 655
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$600(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    return v0

    .line 659
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    .line 660
    const/4 v0, 0x1

    return v0

    .line 651
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_2
    :goto_0
    return v0
.end method

.method onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 388
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTask(Lcom/android/server/wm/Task;)V

    .line 389
    return-void
.end method

.method onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 393
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;)V

    .line 396
    :cond_0
    return-void
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;I)V
    .locals 8
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "windowingMode"    # I

    .line 304
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picture in picture is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Split-screen is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_3
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_7

    .line 323
    :goto_0
    const-string v0, "registerTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 325
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 327
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 329
    const-string v4, "TaskOrganizerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task organizer already exists for windowing mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 334
    .local v4, "orgs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/os/IBinder;>;"
    if-nez v4, :cond_5

    .line 335
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 336
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    :cond_5
    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 340
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM;

    invoke-direct {v6, p2}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 349
    .end local v4    # "orgs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/os/IBinder;>;"
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    return-void

    .line 349
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":I
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .end local p2    # "windowingMode":I
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 351
    .restart local v0    # "uid":I
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .restart local p2    # "windowingMode":I
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw v3

    .line 316
    .end local v0    # "uid":I
    .end local v1    # "origId":J
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multi-window is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "As of now only Pinned/Split/Multiwindow windowing modes are supported for registerTaskOrganizer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeferTaskOrgCallbacksConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 295
    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/ITaskOrganizer;Z)V
    .locals 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "interceptBackPressed"    # Z

    .line 635
    const-string v0, "setInterceptBackPressedOnTaskRoot()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 638
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 639
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 640
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->setInterceptBackPressedOnTaskRoot(Z)V

    .line 643
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    nop

    .line 647
    return-void

    .line 643
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .end local p2    # "interceptBackPressed":Z
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 645
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .restart local p2    # "interceptBackPressed":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw v2
.end method

.method public setLaunchRoot(ILandroid/window/WindowContainerToken;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/window/WindowContainerToken;

    .line 529
    const-string v0, "setLaunchRoot()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 533
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 534
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 535
    .local v3, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v3, :cond_0

    .line 536
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    return-void

    .line 538
    :cond_0
    const/4 v4, 0x0

    if-nez p2, :cond_1

    .line 539
    move-object v5, v4

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 540
    .local v5, "task":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v5, :cond_2

    .line 541
    iput-object v4, v3, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 542
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    return-void

    .line 544
    :cond_2
    :try_start_3
    iget-boolean v4, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_4

    .line 548
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 549
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 553
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iput-object v5, v4, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 554
    .end local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    nop

    .line 558
    return-void

    .line 550
    .restart local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_3
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t set launch root for display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to task on display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 545
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to set task not created by organizer as launch root task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 554
    .end local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 556
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    throw v2
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .locals 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 357
    const-string v0, "unregisterTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 361
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 362
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v3, :cond_0

    .line 363
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    return-void

    .line 365
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 366
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 367
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    nop

    .line 371
    return-void

    .line 367
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 369
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw v2
.end method
