.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field private final mCaller:Lcom/android/server/wm/WindowProcessController;

.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentsComponent:Landroid/content/ComponentName;

.field private final mRecentsFeatureId:Ljava/lang/String;

.field private final mRecentsUid:I

.field private mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTargetActivityType:I

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mUserId:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "activityStartController"    # Lcom/android/server/wm/ActivityStartController;
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "targetIntent"    # Landroid/content/Intent;
    .param p6, "recentsComponent"    # Landroid/content/ComponentName;
    .param p7, "recentsFeatureId"    # Ljava/lang/String;
    .param p8, "recentsUid"    # I
    .param p9, "caller"    # Lcom/android/server/wm/WindowProcessController;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 92
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 93
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 94
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 95
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 96
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 97
    iput-object p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 98
    iput p8, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 99
    iput-object p9, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 101
    nop

    .line 102
    nop

    .line 101
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x3

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 105
    return-void
.end method

.method private finishAnimation(IZ)V
    .locals 12
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 284
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    int-to-long v4, p1

    .local v4, "protoLogParam1":J
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x2d9f011c

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V

    .line 291
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 292
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 293
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 297
    :cond_1
    if-eqz p1, :cond_2

    .line 298
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 302
    :cond_2
    if-ne p1, v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 425
    .end local v1    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "targetStack"    # Lcom/android/server/wm/ActivityStack;

    .line 516
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 517
    return-object v0

    .line 520
    :cond_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;

    const-class v2, Lcom/android/server/wm/Task;

    .line 521
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 520
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 522
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 523
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 524
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 503
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    nop

    .line 501
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 506
    .restart local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :cond_0
    return-object v1

    .line 508
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$L-oo1O0uvOIOr4MDh9QYSeVU09U(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->matchesTarget(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method private matchesTarget(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 528
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v0, v1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0
.end method

.method static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .locals 3
    .param p0, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 491
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Landroid/app/ActivityManager$TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private startRecentsActivityInBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 471
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 472
    .local v0, "options":Landroid/app/ActivityOptions;
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 473
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 477
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 478
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 479
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 480
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 481
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 482
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 484
    return-void
.end method


# virtual methods
.method public synthetic lambda$finishAnimation$0$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .locals 16
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z
    .param p3, "controller"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 311
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x20

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 313
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 315
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 317
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v6, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 321
    .local v0, "targetStack":Lcom/android/server/wm/ActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 322
    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStack;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_0

    .line 323
    :cond_0
    move-object v6, v12

    :goto_0
    move-object v13, v6

    .line 324
    .local v13, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x700f2d

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object v8, v3, v15

    aput-object v9, v3, v14

    invoke-static {v10, v11, v5, v12, v3}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_1
    if-nez v13, :cond_4

    .line 409
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 413
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 416
    :cond_2
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_3

    .line 420
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 329
    :cond_3
    return-void

    .line 333
    :cond_4
    :try_start_1
    iput-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 335
    if-ne v2, v15, :cond_7

    .line 337
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    if-eqz p2, :cond_5

    .line 341
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v15, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 342
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "RecentsAnimation.onAnimationFinished()"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_5
    const-string v3, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 350
    :goto_1
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-virtual {v3}, Lcom/android/server/wm/ProtoLogGroup;->isLogToAny()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 352
    .local v3, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v0, :cond_6

    .line 353
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x690ad5b8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v6, v9, v15

    invoke-static {v7, v8, v5, v12, v9}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 358
    .end local v3    # "topStack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 359
    :cond_7
    if-ne v2, v14, :cond_d

    .line 361
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 362
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V

    .line 364
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/server/wm/ProtoLogGroup;->isLogToAny()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 365
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 366
    .local v4, "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eq v4, v6, :cond_8

    .line 368
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x1d819a45

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v8, v7, v15

    aput-object v9, v7, v14

    invoke-static {v10, v11, v5, v12, v7}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_8
    nop

    .line 390
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 391
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v12, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 392
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 396
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 398
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 399
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 402
    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v4, v3, v15}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "rootTask":Lcom/android/server/wm/Task;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_a
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 413
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 416
    :cond_b
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_c

    .line 420
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    invoke-static {v0, v5}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 424
    :cond_c
    return-void

    .line 380
    .restart local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_d
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result v3

    if-nez v3, :cond_e

    .line 381
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    .line 382
    invoke-virtual {v0, v12, v5, v5}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    :cond_e
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 413
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 414
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 416
    :cond_f
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_10

    .line 420
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 387
    :cond_10
    return-void

    .line 409
    .end local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    nop

    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "reorderMode":I
    .end local p2    # "sendUserLeaveHint":Z
    .end local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "reorderMode":I
    .restart local p2    # "sendUserLeaveHint":Z
    .restart local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :goto_3
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 413
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 414
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 416
    :cond_11
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_12

    .line 420
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 423
    :cond_12
    throw v0
.end method

.method public onAnimationFinished(IZ)V
    .locals 0
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    .line 432
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 436
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x1d4232c8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 437
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 442
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 443
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v0, :cond_2

    .line 444
    return-void

    .line 451
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 456
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    goto :goto_0

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "stackOrderChanged"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 439
    .end local v0    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :cond_5
    :goto_1
    return-void
.end method

.method preloadRecentsActivity()V
    .locals 10

    .line 113
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x6578968

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 117
    .local v0, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 118
    .local v4, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    const-string v5, "preloadRecents"

    if-eqz v4, :cond_3

    .line 119
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    invoke-virtual {v4, v3, v3, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 129
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x44e8f9ad

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v7, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 139
    if-nez v4, :cond_4

    .line 140
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-nez v6, :cond_6

    .line 146
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x266cf679

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v3, v1, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v4, v3, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 150
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 151
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 152
    invoke-virtual {v1, v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 158
    :cond_6
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 164
    invoke-virtual {v4, v2, v2, v5}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    .line 167
    :cond_7
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V
    .locals 18
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 170
    move-object/from16 v8, p0

    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x54466bce

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v11

    invoke-static {v1, v2, v11, v9, v3}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    const-wide/16 v12, 0x20

    const-string v0, "RecentsAnimation#startRecentsActivity"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 174
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v11, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 176
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {v8, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 177
    .local v2, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v11

    :goto_0
    move v14, v0

    .line 178
    .local v14, "hasExistingActivity":Z
    if-eqz v14, :cond_3

    .line 179
    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    .line 180
    if-nez v0, :cond_3

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 182
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x1c40ac59

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v11

    invoke-static {v3, v4, v11, v9, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    return-void

    .line 190
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_5

    .line 191
    :cond_4
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v10, v2}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 195
    :cond_5
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 196
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v15

    .line 198
    .local v15, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 202
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    invoke-static {v0, v10}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 206
    :cond_6
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 208
    const v0, 0x32d923da

    const/4 v7, 0x2

    if-eqz v14, :cond_9

    .line 210
    :try_start_0
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 211
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v11

    aput-object v4, v6, v10

    invoke-static {v5, v0, v11, v9, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_7
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->adjustFocusStackIfNeed(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 223
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 224
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, v0, :cond_8

    .line 225
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 227
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_8
    move-object/from16 v16, v1

    move-object v6, v2

    goto :goto_1

    .line 229
    :cond_9
    const-string v3, "startRecentsActivity_noTargetActivity"

    invoke-direct {v8, v3}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 232
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v3, v11, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    move-object v1, v3

    .line 234
    invoke-direct {v8, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    move-object v2, v3

    .line 235
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 236
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v11

    aput-object v4, v6, v10

    invoke-static {v5, v0, v11, v9, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v11, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 240
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 244
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x26838cff

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v11

    invoke-static {v3, v4, v11, v9, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 249
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v1

    move-object v6, v2

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    :try_start_1
    iput-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 250
    iput-object v6, v8, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 252
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 257
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "startRecentsActivity"

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 259
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 260
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 261
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 259
    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v17, v6

    .end local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move-object v6, v0

    move v0, v7

    move-object/from16 v7, v17

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V

    .line 265
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v9, v11, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 267
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, v17

    .end local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_3
    invoke-virtual {v1, v15, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 271
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskDisplayArea;->registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 277
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catchall_0
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    .line 272
    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_2

    .line 276
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v1, v16

    .end local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_3

    .line 272
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v1, v16

    .end local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 276
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_2
    move-exception v0

    move-object v2, v6

    move-object/from16 v1, v16

    .end local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_3

    .line 272
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_2
    move-exception v0

    move-object v2, v6

    move-object/from16 v1, v16

    .end local v6    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 276
    .end local v16    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 272
    :catch_3
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    nop

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "hasExistingActivity":Z
    .end local v15    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "hasExistingActivity":Z
    .restart local v15    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :goto_3
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 277
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    throw v0
.end method
