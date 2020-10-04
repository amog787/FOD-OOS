.class final Lcom/android/server/wm/DisplayContent$TaskStackContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/TaskStack;",
        ">;"
    }
.end annotation


# instance fields
.field mAppAnimationLayer:Landroid/view/SurfaceControl;

.field mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private mPinnedStack:Lcom/android/server/wm/TaskStack;

.field mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 4361
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4362
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4336
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4337
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4338
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4353
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4357
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4358
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    .line 4359
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4363
    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .line 4485
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 4487
    .local v0, "addIndex":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4488
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4489
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 4443
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_1

    .line 4444
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    .line 4449
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 4445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4451
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 4452
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 4453
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_2

    .line 4458
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_1

    .line 4454
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4459
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 4460
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_4

    .line 4465
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4466
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    goto :goto_1

    .line 4461
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4468
    :cond_5
    :goto_1
    return-void
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .locals 7
    .param p1, "requestedPosition"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "adding"    # Z

    .line 4544
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4545
    const v0, 0x7fffffff

    return v0

    .line 4548
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4549
    .local v0, "topChildPosition":I
    const/high16 v1, -0x80000000

    .line 4550
    .local v1, "belowAlwaysOnTopPosition":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 4551
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4552
    move v1, v2

    .line 4553
    goto :goto_1

    .line 4550
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4558
    .end local v2    # "i":I
    :cond_2
    :goto_1
    const v2, 0x7fffffff

    .line 4560
    .local v2, "maxPosition":I
    const/high16 v3, -0x80000000

    .line 4562
    .local v3, "minPosition":I
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_5

    .line 4563
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4565
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 4568
    :cond_3
    if-eq v1, v5, :cond_4

    .line 4569
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    move v3, v4

    goto :goto_4

    .line 4572
    :cond_5
    if-eq v1, v5, :cond_6

    .line 4573
    move v4, v1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 4576
    :goto_4
    move v4, p1

    .line 4577
    .local v4, "targetPosition":I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4578
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4580
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 4586
    .local v5, "prevPosition":I
    if-eq v4, p1, :cond_8

    if-nez p3, :cond_7

    if-ge v4, v5, :cond_8

    .line 4588
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 4591
    :cond_8
    return v4
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4621
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 4622
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4623
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget-object v2, v2, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4624
    .local v2, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 4625
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4627
    return v0

    .line 4624
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4622
    .end local v2    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_4

    .line 4632
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4633
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 4634
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4635
    .local v3, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    .line 4636
    .local v4, "appTokensCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_5

    .line 4637
    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4639
    return v0

    .line 4636
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4633
    .end local v3    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v4    # "appTokensCount":I
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4644
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "visibleTasks"    # Ljava/util/ArrayList;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 4417
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4418
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4420
    :cond_0
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 4471
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 4472
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 4473
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_1

    .line 4474
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 4475
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_2

    .line 4476
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    .line 4478
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 4480
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 4482
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .line 4428
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4429
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    .line 4430
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 4431
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4741
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 4743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4744
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4745
    .local v1, "s":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4743
    .end local v1    # "s":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4747
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4751
    const/4 v0, 0x0

    .line 4752
    .local v0, "HOME_STACK_STATE":I
    const/4 v1, 0x1

    .line 4753
    .local v1, "NORMAL_STACK_STATE":I
    const/4 v2, 0x2

    .line 4755
    .local v2, "ALWAYS_ON_TOP_STATE":I
    const/4 v3, 0x0

    .line 4756
    .local v3, "layer":I
    const/4 v4, 0x0

    .line 4757
    .local v4, "layerForAnimationLayer":I
    const/4 v5, 0x0

    .line 4758
    .local v5, "layerForBoostedAnimationLayer":I
    const/4 v6, 0x0

    .line 4760
    .local v6, "layerForHomeAnimationLayer":I
    const/4 v7, 0x0

    .local v7, "state":I
    :goto_0
    const/4 v8, 0x2

    if-gt v7, v8, :cond_9

    .line 4761
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 4762
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskStack;

    .line 4763
    .local v10, "s":Lcom/android/server/wm/TaskStack;
    if-nez v7, :cond_0

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4764
    goto :goto_3

    .line 4765
    :cond_0
    const/4 v11, 0x1

    if-ne v7, v11, :cond_1

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_6

    .line 4766
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4767
    goto :goto_3

    .line 4768
    :cond_1
    if-ne v7, v8, :cond_2

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v11

    if-nez v11, :cond_2

    .line 4769
    goto :goto_3

    .line 4771
    :cond_2
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "layer":I
    .local v11, "layer":I
    invoke-virtual {v10, p1, v3}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4772
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    .line 4773
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "layer":I
    .local v12, "layer":I
    invoke-virtual {p1, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v11, v12

    .line 4775
    .end local v12    # "layer":I
    .restart local v11    # "layer":I
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isTaskAnimating()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isAppAnimating()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eq v7, v8, :cond_5

    .line 4779
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "layer":I
    .restart local v3    # "layer":I
    move v4, v11

    goto :goto_2

    .line 4781
    .end local v3    # "layer":I
    .restart local v11    # "layer":I
    :cond_5
    move v3, v11

    .end local v11    # "layer":I
    .restart local v3    # "layer":I
    :goto_2
    if-eq v7, v8, :cond_6

    .line 4782
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "layer":I
    .restart local v11    # "layer":I
    move v5, v3

    move v3, v11

    .line 4761
    .end local v10    # "s":Lcom/android/server/wm/TaskStack;
    .end local v11    # "layer":I
    .restart local v3    # "layer":I
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4785
    .end local v9    # "i":I
    :cond_7
    if-nez v7, :cond_8

    .line 4786
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "layer":I
    .local v8, "layer":I
    move v6, v3

    move v3, v8

    .line 4760
    .end local v8    # "layer":I
    .restart local v3    # "layer":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4789
    .end local v7    # "state":I
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_a

    .line 4790
    invoke-virtual {p1, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4792
    :cond_a
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_b

    .line 4793
    invoke-virtual {p1, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4795
    :cond_b
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_c

    .line 4796
    invoke-virtual {p1, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4798
    :cond_c
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4597
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4598
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4599
    return v0

    .line 4601
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4602
    return v0

    .line 4605
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4606
    return v0

    .line 4608
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4609
    return v0

    .line 4612
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1
    .param p1, "animationLayer"    # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 4802
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 4809
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 4806
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 4804
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 2

    .line 4400
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeStack: Returning null from this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getOrientation()I
    .locals 6

    .line 4677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x5

    .line 4678
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4711
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    .line 4712
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 4714
    .local v4, "isCar":Z
    const-string v5, "WindowManager"

    if-eqz v4, :cond_2

    .line 4717
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing UNSPECIFIED orientation in car for display id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4718
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4717
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    :cond_1
    return v3

    .line 4723
    :cond_2
    const-string v3, " for display id="

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    .line 4725
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is requesting an orientation, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4727
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4725
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    :cond_3
    return v0

    .line 4731
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app is requesting an orientation, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4732
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4733
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4731
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    return v1

    .line 4683
    .end local v0    # "orientation":I
    .end local v4    # "isCar":Z
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4684
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 4685
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 4686
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4687
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    .line 4688
    .restart local v0    # "orientation":I
    if-eq v0, v2, :cond_8

    .line 4689
    return v0

    .line 4696
    .end local v0    # "orientation":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    .line 4697
    .restart local v0    # "orientation":I
    if-eq v0, v3, :cond_9

    .line 4698
    return v0

    .line 4702
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-static {v1, v4}, Lcom/android/server/wm/OpDisplayContentInjector;->getOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)I

    move-result v1

    .line 4704
    .local v1, "forceOrientation":I
    if-eq v1, v2, :cond_a

    .line 4705
    return v1

    .line 4708
    :cond_a
    return v3
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 4407
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    .line 4814
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 4411
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 4370
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4371
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4373
    :cond_0
    if-ne p1, v0, :cond_1

    .line 4374
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4375
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 4376
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 4378
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 4379
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 4380
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez p2, :cond_3

    .line 4381
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 4384
    return-object v1

    .line 4386
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4387
    return-object v1

    .line 4378
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4390
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4396
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4395
    :goto_0
    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 4415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4416
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 4421
    return-object v0
.end method

.method isOnTop()Z
    .locals 1

    .line 4500
    const/4 v0, 0x1

    return v0
.end method

.method onParentChanged()V
    .locals 3

    .line 4819
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->onParentChanged()V

    .line 4820
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4821
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4822
    const-string v2, "animationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4823
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4824
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4825
    const-string v2, "boostedAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4826
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4827
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4828
    const-string v2, "homeAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4829
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4830
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4831
    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4832
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4833
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4834
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4835
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4836
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4837
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4838
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    goto :goto_0

    .line 4840
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4841
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4842
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4843
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4844
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4845
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 4846
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 4847
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 4849
    :goto_0
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 4434
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4435
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4436
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 4438
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 4440
    :cond_0
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/TaskStack;
    .param p3, "includingParents"    # Z

    .line 4505
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 4508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring move of always-on-top stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4513
    .local v0, "currentPosition":I
    invoke-super {p0, v0, p2, v2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4514
    return-void

    .line 4517
    .end local v0    # "currentPosition":I
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    .line 4518
    .local v0, "targetPosition":I
    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4520
    if-eqz p3, :cond_1

    .line 4525
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4526
    .local v2, "topChildPosition":I
    if-ge v0, v2, :cond_1

    if-lt p1, v2, :cond_1

    .line 4527
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4, v1, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4532
    .end local v2    # "topChildPosition":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4533
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 4332
    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 4493
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4494
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 4495
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 4332
    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .locals 6

    .line 4657
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 4658
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4659
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_4

    .line 4660
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 4661
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_0

    .line 4662
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4666
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->cancelAnimation()V

    .line 4667
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performLayout: App token exiting now removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 4659
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4657
    .end local v1    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4673
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 4
    .param p1, "hasVisible"    # Z

    .line 4648
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4649
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 4650
    .local v1, "appTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4651
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 4650
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4648
    .end local v1    # "appTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4654
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
