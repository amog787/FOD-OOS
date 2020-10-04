.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field private final mCallingPid:I

.field private final mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

.field private mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field private mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTargetActivityType:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    sput-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;I)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "activityStartController"    # Lcom/android/server/wm/ActivityStartController;
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "callingPid"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 80
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 81
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 82
    iput p5, p0, Lcom/android/server/wm/RecentsAnimation;->mCallingPid:I

    .line 83
    return-void
.end method

.method private finishAnimation(IZ)V
    .locals 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "sendUserLeaveHint"    # Z

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 231
    sget-boolean v1, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationFinished(): controller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 232
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reorderMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 239
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 240
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 244
    :cond_1
    if-eqz p1, :cond_2

    .line 245
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 249
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$maWFdp-vN04gpjsVfJu49wyo8hQ;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$maWFdp-vN04gpjsVfJu49wyo8hQ;-><init>(Lcom/android/server/wm/RecentsAnimation;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 256
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$t0H9VDhk8jOhDLGudyjnaASceuk;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$t0H9VDhk8jOhDLGudyjnaASceuk;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 353
    .end local v1    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/wm/ActivityStack;Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 431
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 432
    return-object v0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 436
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 437
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 435
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 441
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 417
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    nop

    .line 415
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 420
    .restart local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :cond_0
    return-object v1

    .line 422
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .locals 3
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 405
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$finishAnimation$1$RecentsAnimation()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mCallingPid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setRunningRemoteAnimation(IZ)V

    return-void
.end method

.method public synthetic lambda$finishAnimation$2$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .locals 16
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z
    .param p3, "controller"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 257
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x40

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 259
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 261
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 263
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v5, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 267
    .local v0, "targetStack":Lcom/android/server/wm/ActivityStack;
    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 268
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_0

    .line 269
    :cond_0
    move-object v7, v5

    :goto_0
    move-object v13, v7

    .line 270
    .local v13, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v7, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnimationFinished(): targetStack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " targetActivity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mRestoreTargetBehindStack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    if-nez v13, :cond_2

    .line 349
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 350
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 274
    return-void

    .line 278
    :cond_2
    :try_start_1
    iput-boolean v6, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    const-string v14, "Expected target stack="

    const/4 v15, 0x1

    if-ne v2, v15, :cond_5

    .line 282
    :try_start_2
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    if-eqz p2, :cond_3

    .line 286
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v15, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 287
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v12, "RecentsAnimation.onAnimationFinished()"

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_3
    const-string v7, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 295
    :goto_1
    sget-boolean v7, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 297
    .local v7, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eq v7, v0, :cond_4

    .line 298
    sget-object v8, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to be top most but found stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v7    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    goto :goto_2

    .line 302
    :cond_5
    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    .line 304
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    .line 305
    .local v7, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V

    .line 306
    sget-boolean v8, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 307
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 308
    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 309
    .local v8, "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eq v8, v9, :cond_6

    .line 311
    sget-object v9, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to restored behind stack="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but it is behind stack="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v7    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v8    # "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    nop

    .line 332
    :cond_7
    :goto_2
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 333
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7, v5, v6, v6}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 334
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 338
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 344
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v15}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    .end local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 350
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 351
    nop

    .line 352
    return-void

    .line 322
    .restart local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldCancelWithDeferredScreenshot()Z

    move-result v7

    if-nez v7, :cond_9

    .line 323
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v7

    if-nez v7, :cond_9

    .line 324
    invoke-virtual {v0, v5, v6, v6}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    :cond_9
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 350
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 329
    return-void

    .line 349
    .end local v0    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v6, "Failed to clean up recents activity"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    nop

    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "reorderMode":I
    .end local p2    # "sendUserLeaveHint":Z
    .end local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "reorderMode":I
    .restart local p2    # "sendUserLeaveHint":Z
    .restart local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :goto_3
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 350
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public synthetic lambda$onAnimationFinished$3$RecentsAnimation(IZ)V
    .locals 0
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    return-void
.end method

.method public synthetic lambda$startRecentsActivity$0$RecentsAnimation()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mCallingPid:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setRunningRemoteAnimation(IZ)V

    return-void
.end method

.method public onAnimationFinished(IZZ)V
    .locals 2
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSychronously"    # Z
    .param p3, "sendUserLeaveHint"    # Z

    .line 359
    if-eqz p2, :cond_0

    .line 360
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$yp3SVPfM17AJdya7PiWVlmTQumE;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$yp3SVPfM17AJdya7PiWVlmTQumE;-><init>(Lcom/android/server/wm/RecentsAnimation;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 364
    :goto_0
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 368
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStackOrderChanged(): stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 374
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 375
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v0, :cond_2

    .line 376
    return-void

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 380
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 381
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 382
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldCancelWithDeferredScreenshot()Z

    move-result v3

    .line 381
    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V

    .line 388
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 390
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldCancelWithDeferredScreenshot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 391
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelOnNextTransitionStart()V

    goto :goto_0

    .line 395
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const-string v4, "stackOrderChanged"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 371
    .end local v0    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_5
    :goto_1
    return-void
.end method

.method startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "recentsComponent"    # Landroid/content/ComponentName;
    .param p4, "recentsUid"    # I
    .param p5, "assistDataReceiver"    # Landroid/app/IAssistDataReceiver;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .line 88
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsActivity(): intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " assistDataReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v10, p5

    .line 90
    :goto_0
    const-wide/16 v11, 0x40

    const-string v0, "RecentsAnimation#startRecentsActivity"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 93
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v13, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    .local v13, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-direct {v7, v9}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 97
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start recents animation, nextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 98
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v14

    .line 104
    .local v14, "userId":I
    nop

    .line 105
    nop

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x3

    goto :goto_1

    .line 104
    :cond_3
    move-object/from16 v6, p3

    .line 107
    :cond_4
    const/4 v0, 0x2

    :goto_1
    iput v0, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 108
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v1, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 110
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v7, v1, v0, v14}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 112
    .local v2, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x1

    if-eqz v2, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    move/from16 v16, v3

    .line 115
    .local v16, "hasExistingActivity":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 118
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRecentsActivity, skip start target="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6
    if-eqz v16, :cond_8

    .line 123
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 124
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    .line 125
    iget-object v4, v7, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-nez v4, :cond_8

    .line 126
    invoke-direct {v7, v9}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 127
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No stack above target stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7
    return-void

    .line 134
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_8
    if-eqz v2, :cond_9

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_a

    .line 135
    :cond_9
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 139
    :cond_a
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 141
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$e3kosml-870P6Bh_K_Z_6yyLHZk;

    invoke-direct {v4, v7}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$e3kosml-870P6Bh_K_Z_6yyLHZk;-><init>(Lcom/android/server/wm/RecentsAnimation;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 145
    const-string v3, " behind stack="

    const-string v4, "startRecentsActivity"

    const-string v11, "Moved stack="

    if-eqz v16, :cond_e

    .line 147
    :try_start_0
    iget-object v12, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 148
    sget-boolean v12, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v12, :cond_b

    sget-object v12, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 149
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_b
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-static {v3, v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->adjustFocusStackIfNeed(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityStack;)V

    .line 159
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    if-eq v3, v11, :cond_c

    .line 160
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_c
    move/from16 v15, p4

    :cond_d
    :goto_3
    move-object v12, v1

    move-object v11, v2

    goto/16 :goto_4

    .line 223
    :catchall_0
    move-exception v0

    move/from16 v15, p4

    goto/16 :goto_8

    .line 219
    :catch_0
    move-exception v0

    move/from16 v15, p4

    goto/16 :goto_7

    .line 165
    :cond_e
    :try_start_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    .line 166
    .local v12, "options":Landroid/app/ActivityOptions;
    iget v15, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v12, v15}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 167
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 168
    const/high16 v15, 0x10010000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v15, v7, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    const-string v0, "startRecentsActivity_noTargetActivity"

    .line 171
    invoke-virtual {v15, v8, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 172
    move/from16 v15, p4

    :try_start_2
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 174
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 179
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v5, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .local v18, "targetStack":Lcom/android/server/wm/ActivityStack;
    :try_start_3
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v0

    .line 181
    .end local v18    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v7, v1, v0, v14}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v2, v0

    .line 182
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 183
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 184
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 185
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_f
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 189
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 193
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Started intent="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/16 :goto_3

    .line 198
    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v11, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_4
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 199
    iput-object v11, v7, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 204
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 206
    iget-object v1, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 208
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v17

    .line 206
    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move v8, v5

    move v5, v0

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 212
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 214
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 218
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 224
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catchall_1
    move-exception v0

    move-object v2, v11

    move-object v1, v12

    goto :goto_8

    .line 219
    :catch_1
    move-exception v0

    move-object v2, v11

    move-object v1, v12

    goto :goto_7

    .end local v11    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_2
    move-exception v0

    goto :goto_7

    .line 223
    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_8

    .line 219
    :catch_3
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_7

    .line 223
    .end local v18    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 219
    :catch_4
    move-exception v0

    goto :goto_6

    .line 223
    :catchall_4
    move-exception v0

    move/from16 v15, p4

    :goto_5
    move-object/from16 v18, v1

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "targetStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_8

    .line 219
    .end local v18    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :catch_5
    move-exception v0

    move/from16 v15, p4

    :goto_6
    move-object/from16 v18, v1

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_6
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    nop

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "userId":I
    .end local v16    # "hasExistingActivity":Z
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    .end local p3    # "recentsComponent":Landroid/content/ComponentName;
    .end local p4    # "recentsUid":I
    .end local p5    # "assistDataReceiver":Landroid/app/IAssistDataReceiver;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "userId":I
    .restart local v16    # "hasExistingActivity":Z
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    .restart local p3    # "recentsComponent":Landroid/content/ComponentName;
    .restart local p4    # "recentsUid":I
    .restart local p5    # "assistDataReceiver":Landroid/app/IAssistDataReceiver;
    :catchall_5
    move-exception v0

    :goto_8
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 224
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
