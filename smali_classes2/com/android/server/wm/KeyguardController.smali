.class Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private final mDisplayStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 90
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 91
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/KeyguardController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private canReleaseEarlier(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;I)Z
    .locals 3
    .param p1, "state"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .param p2, "displayId"    # I

    .line 464
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_1

    .line 465
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 467
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 468
    const-string v2, "com.google.android.cellbroadcastreceiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 469
    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityName:Ljava/lang/String;

    .line 471
    const-string v2, "CellBroadcastAlertDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const/4 v1, 0x1

    return v1

    .line 477
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private convertTransitFlags(I)I
    .locals 2
    .param p1, "keyguardGoingAwayFlags"    # I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "result":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 268
    or-int/lit8 v0, v0, 0x1

    .line 270
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 271
    or-int/lit8 v0, v0, 0x2

    .line 273
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 274
    or-int/lit8 v0, v0, 0x4

    .line 276
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 277
    or-int/lit8 v0, v0, 0x8

    .line 279
    :cond_3
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .locals 2

    .line 425
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 431
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 432
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    .line 437
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1
    return-void
.end method

.method private dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 259
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .locals 3
    .param p1, "displayId"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 483
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-nez v0, :cond_0

    .line 484
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    move-object v0, v1

    .line 485
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 487
    :cond_0
    return-object v0
.end method

.method private handleDismissKeyguard()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 379
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 380
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 381
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 382
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 383
    iget v3, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 388
    :cond_1
    return-void
.end method

.method private handleOccludedChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 335
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 343
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->resolveOccludeTransit()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 346
    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    throw v0

    .line 353
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 357
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 361
    return-void
.end method

.method private isDisplayOccluded(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method private resolveOccludeTransit()I
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 404
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 405
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 407
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    return v1

    .line 413
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 417
    return v2

    .line 419
    :cond_1
    const/16 v1, 0x16

    return v1
.end method

.method private setKeyguardGoingAway(Z)V
    .locals 1
    .param p1, "keyguardGoingAway"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 255
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 441
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 443
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 441
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 445
    .end local v0    # "displayNdx":I
    :cond_0
    return-void
.end method

.method private updateKeyguardSleepToken(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 449
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->acquiredSleepToken()V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/KeyguardController;->canReleaseEarlier(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    const-string v1, "ActivityTaskManager"

    const-string v2, "release sleep token earlier"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 460
    :cond_2
    :goto_0
    return-void
.end method

.method private writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method canDismissKeyguard()Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 399
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 398
    :goto_1
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dismissKeyguard"    # Z

    .line 291
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .locals 2
    .param p1, "dismissKeyguard"    # Z
    .param p2, "showWhenLocked"    # Z

    .line 301
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 302
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 301
    :goto_1
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 236
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 237
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 250
    return-void

    .line 238
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 239
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 618
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 621
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 622
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 623
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 624
    const-wide v2, 0x20b00000002L

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 625
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 626
    return-void
.end method

.method isKeyguardGoingAway()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 103
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0
.end method

.method isKeyguardShowing(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardUnoccludedOrAodShowing(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 113
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    return v0
.end method

.method keyguardGoingAway(I)V
    .locals 6
    .param p1, "flags"    # I

    .line 201
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "keyguardGoingAway"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 207
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 208
    nop

    .line 210
    iget-boolean v4, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v5

    .line 208
    :goto_0
    invoke-static {v3, v4, v3, v2}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIILjava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v3, 0x14

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result v4

    .line 214
    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 217
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 221
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->onKeyguardDone()V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 226
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 227
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->addStartingWindowsForVisibleActivities()V

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 231
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    nop

    .line 233
    return-void

    .line 230
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 231
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    throw v2
.end method

.method onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 492
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 494
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 496
    :cond_0
    return-void
.end method

.method setKeyguardShown(ZZ)V
    .locals 6
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 149
    .local v0, "aodChanged":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 151
    .local v1, "keyguardChanged":Z
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 152
    return-void

    .line 156
    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 157
    invoke-static {v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateKeepHighVsync(Z)V

    .line 161
    :cond_4
    nop

    .line 162
    nop

    .line 163
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    .line 160
    const-string v4, "setKeyguardShown"

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIILjava/lang/String;)V

    .line 165
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    .line 166
    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    .line 167
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 169
    if-eqz v1, :cond_5

    .line 171
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 172
    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 173
    if-eqz p1, :cond_5

    .line 174
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 178
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 188
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v3, v4, v5}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 190
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v3, v2, v4}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 192
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 96
    return-void
.end method

.method visibilitiesUpdated()V
    .locals 5

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "requestDismissKeyguard":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 312
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 314
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v3

    .line 315
    .local v3, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    .line 316
    invoke-static {v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 312
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 320
    .end local v1    # "displayNdx":I
    :cond_0
    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard()V

    .line 323
    :cond_1
    return-void
.end method
