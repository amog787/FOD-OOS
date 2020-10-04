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

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mSecondaryDisplayIdsShowing:[I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 85
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/KeyguardController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;
    .param p1, "x1"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private convertTransitFlags(I)I
    .locals 2
    .param p1, "keyguardGoingAwayFlags"    # I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "result":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 248
    or-int/lit8 v0, v0, 0x1

    .line 250
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 251
    or-int/lit8 v0, v0, 0x2

    .line 253
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 254
    or-int/lit8 v0, v0, 0x4

    .line 256
    :cond_2
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .locals 3

    .line 416
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 423
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 427
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v2

    .line 426
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 429
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    return-void
.end method

.method private dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 239
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .locals 3
    .param p1, "displayId"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 450
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-nez v0, :cond_0

    .line 451
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    move-object v0, v1

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 454
    :cond_0
    return-object v0
.end method

.method private handleDismissKeyguard()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 369
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 370
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 371
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 372
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 373
    iget v3, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 378
    :cond_1
    return-void
.end method

.method private handleOccludedChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 326
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 334
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->resolveOccludeTransit()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 337
    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 342
    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 344
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 347
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 349
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 351
    return-void
.end method

.method private isDisplayOccluded(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method private resolveOccludeTransit()I
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 394
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 395
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 396
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 398
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    return v1

    .line 404
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 408
    return v2

    .line 410
    :cond_1
    const/16 v1, 0x16

    return v1
.end method

.method private setKeyguardGoingAway(Z)V
    .locals 1
    .param p1, "keyguardGoingAway"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 235
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 433
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 435
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 433
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 437
    .end local v0    # "displayNdx":I
    :cond_0
    return-void
.end method

.method private updateKeyguardSleepToken(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 440
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 441
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->acquiredSleepToken()V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 446
    :cond_1
    :goto_0
    return-void
.end method

.method private visibilitiesUpdated()V
    .locals 5

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "requestDismissKeyguard":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 303
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 305
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v3

    .line 306
    .local v3, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V

    .line 307
    invoke-static {v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 303
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    .end local v1    # "displayNdx":I
    :cond_0
    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard()V

    .line 314
    :cond_1
    return-void
.end method

.method private writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .locals 1

    .line 263
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 264
    return-void
.end method

.method canDismissKeyguard()Z
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 389
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

    .line 388
    :goto_1
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dismissKeyguard"    # Z

    .line 286
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
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

    .line 286
    :goto_0
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .locals 2
    .param p1, "dismissKeyguard"    # Z
    .param p2, "showWhenLocked"    # Z

    .line 296
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 297
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

    .line 296
    :goto_1
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 216
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 217
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 221
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

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 218
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 219
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
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

    .line 576
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

    .line 577
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

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 579
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

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .locals 1

    .line 271
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 272
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->visibilitiesUpdated()V

    .line 275
    :cond_0
    return-void
.end method

.method isKeyguardGoingAway()Z
    .locals 1

    .line 133
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

    .line 125
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

    .line 97
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0
.end method

.method isKeyguardShowing(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 118
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

    .line 107
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    return v0
.end method

.method keyguardGoingAway(I)V
    .locals 8
    .param p1, "flags"    # I

    .line 182
    const-string v0, "keyguardGoingAway: surfaceLayout"

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    const-wide/16 v1, 0x40

    const-string v3, "keyguardGoingAway"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 188
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 189
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x14

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result v6

    .line 190
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 193
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 197
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onKeyguardDone()V

    .line 201
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 202
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 203
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootActivityContainer;->addStartingWindowsForVisibleActivities(Z)V

    .line 205
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 209
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 211
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 212
    nop

    .line 213
    return-void

    .line 207
    :catchall_0
    move-exception v3

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 209
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 211
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 459
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 461
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 463
    :cond_0
    return-void
.end method

.method setKeyguardShown(ZZ)V
    .locals 6
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 141
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 143
    .local v0, "keyguardChanged":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eq p2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 144
    .local v1, "aodChanged":Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 145
    return-void

    .line 147
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    .line 148
    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    .line 149
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 151
    if-eqz v0, :cond_4

    .line 153
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 154
    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 155
    if-eqz p1, :cond_4

    .line 156
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 160
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 168
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v3, v4, v5}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 170
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {p0, v3, v4, v5}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 172
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 173
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 90
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 584
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 585
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 586
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 587
    const-wide v2, 0x20b00000002L

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 588
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 589
    return-void
.end method
