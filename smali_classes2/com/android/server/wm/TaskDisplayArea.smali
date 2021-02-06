.class final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;"
    }
.end annotation


# static fields
.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mLaunchRootTask:Lcom/android/server/wm/Task;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootHomeTask:Lcom/android/server/wm/ActivityStack;

.field private mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

.field private mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

.field private mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private final mTmpHomeStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpLayerForAnimationLayer:I

.field private mTmpLayerForSplitScreenDividerAnchor:I

.field private final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field private final mTmpNormalStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    .line 173
    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    .line 174
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "displayAreaFeature"    # I

    .line 180
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 150
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 175
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 176
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    .line 181
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 182
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 183
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 184
    return-void
.end method

.method private adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I
    .locals 1
    .param p1, "s"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "layer"    # I

    .line 712
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .local v0, "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    move p2, v0

    .line 716
    .end local v0    # "layer":I
    .restart local p2    # "layer":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTaskAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAppTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .restart local v0    # "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    move p2, v0

    .line 721
    .end local v0    # "layer":I
    .restart local p2    # "layer":I
    :cond_2
    return p2
.end method

.method private adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "startLayer"    # I
    .param p4, "normalStacks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;IZ)I"
        }
    .end annotation

    .line 734
    .local p2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 735
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 736
    .local v0, "stackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 737
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 738
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 739
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "startLayer":I
    .local v3, "startLayer":I
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 740
    if-eqz p4, :cond_0

    .line 741
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_1

    .line 740
    .end local p3    # "startLayer":I
    .restart local v3    # "startLayer":I
    :cond_0
    move p3, v3

    goto :goto_1

    .line 744
    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 736
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 749
    .local v1, "zBoostSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 750
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 751
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "startLayer":I
    .local v4, "startLayer":I
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 752
    if-eqz p4, :cond_3

    .line 753
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_3

    .line 752
    .end local p3    # "startLayer":I
    .restart local v4    # "startLayer":I
    :cond_3
    move p3, v4

    .line 749
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 756
    .end local v2    # "i":I
    :cond_4
    return p3
.end method

.method private findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 460
    .local v3, "curr":Lcom/android/server/wm/ActivityStack;
    if-ne v3, p1, :cond_0

    move v2, v1

    .line 461
    .local v2, "sameStack":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-gt v4, v5, :cond_1

    if-nez v2, :cond_1

    .line 462
    return v0

    .line 456
    .end local v2    # "sameStack":Z
    .end local v3    # "curr":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 465
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 434
    const/high16 v0, -0x80000000

    .line 435
    .local v0, "minPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 437
    move v0, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 448
    .local v1, "currentIndex":I
    if-le v1, v0, :cond_1

    .line 449
    move v0, v1

    .line 452
    .end local v1    # "currentIndex":I
    :cond_1
    return v0
.end method

.method private findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I
    .locals 4
    .param p1, "requestedPosition"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "adding"    # Z

    .line 489
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    .line 491
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 495
    .local v1, "minPosition":I
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_0

    .line 497
    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    .line 498
    const/4 p1, 0x0

    .line 501
    :cond_1
    :goto_0
    move v2, p1

    .line 502
    .local v2, "targetPosition":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 503
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 505
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 511
    .local v3, "prevPosition":I
    if-eq v2, p1, :cond_3

    if-nez p3, :cond_2

    if-ge v2, v3, :cond_3

    .line 512
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 515
    :cond_3
    return v2
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

    .line 545
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 546
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 548
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 549
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    return v0

    .line 548
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 546
    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_4

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 557
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 558
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 559
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 560
    .local v4, "appTokensCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_5

    .line 561
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 563
    return v0

    .line 560
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 557
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "appTokensCount":I
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 568
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method private getPriority(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 430
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1861
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1862
    .local v1, "index":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I

    .line 1774
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "supportsMultiWindow"    # Z
    .param p3, "supportsSplitScreen"    # Z
    .param p4, "supportsFreeform"    # Z
    .param p5, "supportsPip"    # Z
    .param p6, "activityType"    # I

    .line 1506
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1510
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1511
    return v1

    .line 1514
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 1515
    return v0

    .line 1518
    :cond_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 1524
    :cond_3
    if-nez p4, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 1525
    return v1

    .line 1528
    :cond_4
    if-nez p5, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 1529
    return v1

    .line 1531
    :cond_5
    return v0

    .line 1520
    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    .line 1521
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1520
    :goto_1
    return v0

    .line 1508
    :cond_8
    :goto_2
    return v0
.end method

.method public static synthetic lambda$XcH01_sSElIBkfdzcfbGZuAMtmk(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "visibleTasks"    # Ljava/util/ArrayList;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 255
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method

.method private moveSplitScreenTasksToFullScreen()V
    .locals 7

    .line 1474
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1475
    .local v0, "wct":Landroid/window/WindowContainerTransaction;
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1476
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1482
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1483
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1484
    .local v3, "root":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1485
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1484
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1482
    .end local v3    # "root":Lcom/android/server/wm/Task;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1489
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1490
    return-void
.end method

.method private updateLaunchRootTask(I)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "windowingMode"    # I

    .line 1079
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    return-object v0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1084
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1085
    .local v1, "t":Lcom/android/server/wm/Task;
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 1086
    goto :goto_3

    .line 1089
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3

    .line 1090
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1091
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1092
    .local v4, "tt":Lcom/android/server/wm/Task;
    iget-boolean v5, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_2

    if-eq v4, v1, :cond_2

    .line 1093
    iput-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1094
    goto :goto_2

    .line 1090
    .end local v4    # "tt":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_3
    :goto_2
    return-object v1

    .line 1083
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1100
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 1273
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 1276
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x1081

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1277
    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    .line 1278
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1280
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    .line 1286
    :goto_0
    sget v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    if-lez v0, :cond_2

    .line 1287
    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    .line 1289
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 1291
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-virtual {v0, v3, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    .line 1298
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    .line 1301
    :cond_4
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1304
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    .line 1305
    if-eqz v0, :cond_0

    .line 1306
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1308
    :cond_0
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 338
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result p2

    .line 342
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 346
    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    .line 93
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    return-void
.end method

.method addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_4

    .line 284
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    .line 294
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_6

    .line 295
    return-void

    .line 297
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 298
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 299
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_7

    .line 304
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1

    .line 300
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_8
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 306
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_9

    .line 312
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    .line 315
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    goto :goto_1

    .line 307
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: split screen primary stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_a
    :goto_1
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 4

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1218
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1219
    const/4 v1, 0x0

    return v1

    .line 1216
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1222
    .end local v0    # "stackNdx":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1223
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 1228
    return v1
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 669
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 667
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 674
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 675
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 682
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 684
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 687
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 693
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v0

    .line 695
    add-int/lit8 v1, v0, 0x1

    .line 696
    .local v0, "layerForHomeAnimationLayer":I
    .local v1, "layer":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "layer":I
    .local v3, "layer":I
    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    .line 697
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "layer":I
    .restart local v1    # "layer":I
    iput v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    .line 698
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v1

    .line 702
    add-int/lit8 v3, v1, 0x1

    .line 703
    .local v1, "layerForBoostedAnimationLayer":I
    .restart local v3    # "layer":I
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    .line 705
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 706
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 707
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 708
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 709
    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 1913
    const/4 v0, 0x1

    return v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 1014
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .locals 9
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "createdByOrganizer"    # Z

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_0
    if-nez p2, :cond_1

    if-nez p6, :cond_1

    .line 1046
    const/4 p2, 0x1

    .line 1049
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_3

    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1053
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2

    goto :goto_0

    .line 1054
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1059
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1067
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 1072
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getNextStackId()I

    move-result v8

    .line 1073
    .local v8, "stackId":I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v8

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1063
    .end local v8    # "stackId":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .locals 14
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "stackId"    # I
    .param p4, "onTop"    # Z
    .param p5, "info"    # Landroid/content/pm/ActivityInfo;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "createdByOrganizer"    # Z

    .line 1106
    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    move v3, p1

    if-ne v3, v2, :cond_1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_1
    move/from16 v2, p2

    .line 1110
    :goto_0
    if-nez p5, :cond_2

    .line 1111
    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1112
    .end local p5    # "info":Landroid/content/pm/ActivityInfo;
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v4

    goto :goto_1

    .line 1110
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    move-object/from16 v10, p5

    .line 1116
    .end local p5    # "info":Landroid/content/pm/ActivityInfo;
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    if-eqz p7, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v4

    :goto_2
    move-object v11, v4

    .line 1117
    .local v11, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_4

    .line 1119
    const/4 v3, 0x0

    move v12, v3

    .end local p1    # "windowingMode":I
    .local v3, "windowingMode":I
    goto :goto_3

    .line 1117
    .end local v3    # "windowingMode":I
    .restart local p1    # "windowingMode":I
    :cond_4
    move v12, v3

    .line 1122
    .end local p1    # "windowingMode":I
    .local v12, "windowingMode":I
    :goto_3
    new-instance v13, Lcom/android/server/wm/ActivityStack;

    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, v13

    move/from16 v5, p3

    move/from16 v6, p2

    move-object v7, v10

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    .line 1124
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v11, :cond_6

    .line 1125
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-virtual {v11, v3, v4}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1126
    if-eqz p4, :cond_8

    .line 1127
    move-object v1, v11

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    .line 1130
    :cond_6
    if-eqz p4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 1131
    invoke-virtual {v3, v12, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    .line 1133
    :cond_8
    :goto_6
    return-object v3
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2007
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2008
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_0

    .line 2009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mPreferredTopFocusableStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_1

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2015
    .local v1, "triplePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2017
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 2018
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v3, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2016
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2021
    .end local v2    # "stackNdx":I
    :cond_2
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 1927
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1928
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1929
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1933
    .end local v0    # "stackNdx":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1934
    nop

    .line 1935
    return-void

    .line 1933
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1934
    throw v0
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isPreferredDisplayArea"    # Z
    .param p3, "result"    # Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_7

    .line 1317
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1318
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_6

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1325
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)V

    .line 1331
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    .line 1332
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_5

    .line 1335
    const/4 v2, 0x0

    .line 1336
    .local v2, "pulled":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 1337
    const/4 v2, 0x1

    .line 1340
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    .line 1346
    if-nez v2, :cond_3

    .line 1347
    sget-boolean v3, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v3, :cond_2

    .line 1348
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    .line 1350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1354
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_4

    .line 1356
    const/4 v3, 0x6

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 1358
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1359
    return-void

    .line 1360
    .end local v2    # "pulled":Z
    :cond_5
    if-eqz p2, :cond_6

    .line 1364
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1316
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1370
    .end local v0    # "stackNdx":I
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_a

    .line 1373
    :cond_8
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_9

    .line 1374
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    .line 1377
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1379
    :cond_a
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

    .line 521
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 522
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    return v0

    .line 525
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    return v0

    .line 529
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    return v0

    .line 532
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    return v0

    .line 536
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1
    .param p1, "animationLayer"    # I

    .line 761
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .line 1876
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1192
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 1193
    const/4 v1, 0x0

    return-object v1

    .line 1197
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1198
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 1201
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1202
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 1205
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1208
    :cond_3
    return-object v1
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 1142
    return-object v0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1146
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1147
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    return-object v1

    .line 1145
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1152
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "userId"    # I

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1761
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 1762
    const/4 v1, 0x0

    return-object v1

    .line 1765
    :cond_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 1766
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 1767
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1765
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1768
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1769
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1770
    return-object v2
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 5
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1159
    .local v0, "currentWindowingMode":I
    :goto_0
    const/4 v1, 0x0

    .line 1160
    .local v1, "candidate":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1161
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1162
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    if-ne v3, p1, :cond_1

    .line 1163
    goto :goto_2

    .line 1165
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1166
    goto :goto_2

    .line 1169
    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    if-nez v1, :cond_3

    .line 1170
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1178
    move-object v1, v3

    .line 1179
    nop

    .line 1160
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1181
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1183
    return-object v1

    .line 1185
    :cond_4
    return-object v3

    .line 1187
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    return-object v1
.end method

.method getNextStackId()I
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "onTop"    # Z

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1714
    .local v0, "homeTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1717
    :cond_0
    return-object v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 938
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;
    .locals 12
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "candidateTask"    # Lcom/android/server/wm/Task;

    .line 955
    move-object v7, p0

    move v8, p1

    move v9, p3

    move-object/from16 v10, p5

    if-eqz v8, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 954
    :goto_0
    move v11, p2

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 958
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1

    .line 959
    return-object v0

    .line 958
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    goto :goto_3

    .line 961
    :cond_2
    if-eqz v10, :cond_a

    .line 962
    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 963
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_3

    const v1, 0x7fffffff

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    .line 964
    .local v1, "position":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 966
    .local v2, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5

    .line 967
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 968
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    .line 969
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v2, :cond_8

    .line 970
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    .line 972
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v3

    if-nez v3, :cond_8

    .line 973
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_7

    .line 974
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_2

    .line 976
    :cond_7
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 980
    :cond_8
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-eq v3, v8, :cond_9

    .line 981
    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 983
    :cond_9
    return-object v0

    .line 961
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "position":I
    .end local v2    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_a
    :goto_3
    nop

    .line 985
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I
    .param p5, "onTop"    # Z

    .line 998
    if-eqz p2, :cond_0

    .line 999
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1003
    .local v0, "windowingMode":I
    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1004
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p4

    move v4, p5

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getOrientation(I)I
    .locals 13
    .param p1, "candidate"    # I

    .line 601
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v1, :cond_4

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 611
    .local v0, "topHomeTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 615
    .local v1, "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 617
    .local v2, "isHomeActivityLaunching":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 618
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v3

    .line 619
    .local v3, "orientation":I
    if-eq v3, v4, :cond_2

    .line 620
    return v3

    .line 627
    .end local v0    # "topHomeTask":Lcom/android/server/wm/Task;
    .end local v1    # "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "isHomeActivityLaunching":Z
    .end local v3    # "orientation":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayContentInjector;->getOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    .line 629
    .local v0, "forceOrientation":I
    if-eq v0, v4, :cond_3

    .line 630
    return v0

    .line 633
    :cond_3
    const/4 v1, -0x1

    return v1

    .line 637
    .end local v0    # "forceOrientation":I
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 638
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5, v6}, Lcom/android/server/wm/OpQuickReplyInjector;->getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    .line 639
    .local v5, "orientation":I
    if-eq v5, v4, :cond_5

    .line 640
    return v5

    .line 646
    .end local v5    # "orientation":I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v5

    .line 647
    .restart local v5    # "orientation":I
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v4, :cond_7

    if-eq v5, v0, :cond_7

    .line 649
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_6

    int-to-long v8, v5

    .local v8, "protoLogParam0":J
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v0

    .local v10, "protoLogParam1":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x5253dbca

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v4, v1, v7, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_6
    return v5

    .line 655
    :cond_7
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    int-to-long v8, v0

    .restart local v8    # "protoLogParam0":J
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v0

    .restart local v10    # "protoLogParam1":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x61c711e7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v6, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v4, v1, v7, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 660
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootRecentsTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    return-object v1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "rootTaskId"    # I

    .line 923
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 924
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 925
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 926
    return-object v1

    .line 923
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 929
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 191
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 193
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 196
    :cond_1
    if-ne p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 198
    :cond_2
    if-ne p1, v1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 203
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez p2, :cond_4

    .line 204
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 207
    return-object v1

    .line 209
    :cond_4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    return-object v1

    .line 201
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStackAt(I)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "index"    # I

    .line 1697
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected getStackCount()I
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    .line 219
    .local v0, "count":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "windowingMode"    # I

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

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

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 259
    return-object v0
.end method

.method hasPinnedTask()Z
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOnTop()Z
    .locals 1

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 1880
    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isSplitScreenModeActivated()Z
    .locals 2

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1722
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isStackVisible(I)Z
    .locals 2
    .param p1, "windowingMode"    # I

    .line 1867
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1868
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1637
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1638
    .local v3, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1639
    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    .line 1636
    .end local v3    # "current":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1642
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 11
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1583
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1584
    .local v0, "supportsMultiWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1585
    .local v1, "supportsSplitScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1586
    .local v2, "supportsFreeform":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1587
    .local v3, "supportsPip":Z
    if-eqz v0, :cond_1

    .line 1588
    if-eqz p3, :cond_0

    .line 1589
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    .line 1590
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    goto :goto_0

    .line 1592
    :cond_0
    if-eqz p2, :cond_1

    .line 1593
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    .line 1594
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 1595
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    .line 1596
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    .line 1600
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1601
    move-object v4, p0

    move v5, p1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1600
    :goto_1
    return v4
.end method

.method public synthetic lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1477
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_0
    return-void
.end method

.method public synthetic lambda$onParentChanged$1$TaskDisplayArea()V
    .locals 4

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 781
    const-string v2, "animationLayer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 782
    const-string v2, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 783
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 785
    const-string v3, "boostedAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 786
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 788
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 789
    const-string v3, "homeAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 790
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 791
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 792
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 793
    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 794
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 796
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 797
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 798
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 799
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 800
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 801
    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1746
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1748
    return-void

    .line 1750
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1751
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1735
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1738
    :cond_0
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 9
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1783
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    return-void

    .line 1788
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    .line 1789
    .local v1, "isRootTask":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1791
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 1793
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1797
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    .line 1798
    .local v3, "numStacks":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_2
    if-ge v4, v3, :cond_9

    .line 1799
    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_3

    .line 1800
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    :goto_3
    nop

    .line 1801
    .local v5, "s":Lcom/android/server/wm/ActivityStack;
    if-ne v5, p1, :cond_4

    .line 1802
    goto :goto_5

    .line 1804
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 1805
    .local v6, "winMode":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    .line 1807
    .local v7, "isValidWindowingMode":Z
    :cond_6
    :goto_4
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 1809
    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1810
    .local v0, "position":I
    if-eqz v1, :cond_7

    .line 1811
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_6

    .line 1813
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1815
    goto :goto_6

    .line 1798
    .end local v0    # "position":I
    .end local v5    # "s":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "winMode":I
    .end local v7    # "isValidWindowingMode":Z
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1818
    .end local v4    # "stackNdx":I
    :cond_9
    :goto_6
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1826
    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_3

    .line 1830
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1831
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 1839
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1840
    .local v1, "stackIndex":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1841
    .local v2, "behindStackIndex":I
    if-gt v1, v2, :cond_2

    .line 1842
    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1843
    .local v3, "insertIndex":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1844
    .local v5, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1845
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_1

    .line 1847
    :cond_3
    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1849
    :goto_1
    return-void

    .line 1832
    .end local v1    # "stackIndex":I
    .end local v2    # "behindStackIndex":I
    .end local v3    # "insertIndex":I
    .end local v5    # "position":I
    :cond_4
    :goto_2
    return-void

    .line 1827
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_5
    :goto_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 2
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 778
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_0

    .line 803
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 805
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 806
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 807
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 808
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 811
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 812
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 813
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 815
    :goto_0
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .locals 1

    .line 1446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 1447
    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "toTop"    # Lcom/android/server/wm/ActivityStack;

    .line 1450
    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1452
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1453
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveSplitScreenTasksToFullScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    if-eqz p1, :cond_0

    .line 1456
    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1457
    .local v1, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1458
    .local v2, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 1466
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1469
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1470
    .end local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "homeStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 1471
    return-void

    .line 1455
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_4

    .line 1456
    move-object v2, p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1457
    .local v2, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1458
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-eqz p1, :cond_7

    .line 1466
    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1469
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1470
    .end local v2    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    throw v1
.end method

.method onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1906
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1906
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1909
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onStackRemoved(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 818
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeStack: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_1

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 827
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 267
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 269
    :cond_0
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 7
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1242
    const/4 v0, 0x0

    .line 1243
    .local v0, "someActivityPaused":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1244
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1245
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1246
    .local v3, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3

    .line 1247
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1248
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1252
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    const-string v5, "WindowManager"

    if-eqz v4, :cond_1

    .line 1253
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip pausing stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1254
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    goto :goto_1

    .line 1259
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_2

    .line 1260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseBackStacks: stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mResumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1243
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1267
    .end local v1    # "stackNdx":I
    :cond_4
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 365
    .local v0, "moveToTop":Z
    :goto_0
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    .line 370
    .local v4, "moveToBottom":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 371
    .local v5, "wasContained":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 375
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring move of always-on-top stack="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bottom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 382
    .local v1, "currentPosition":I
    invoke-super {p0, v1, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 383
    return-void

    .line 387
    .end local v1    # "currentPosition":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v7

    if-nez v7, :cond_5

    .line 388
    const/4 p3, 0x0

    .line 390
    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result v7

    .line 391
    .local v7, "targetPosition":I
    invoke-super {p0, v7, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 393
    if-eqz p3, :cond_8

    if-nez v0, :cond_6

    if-eqz v4, :cond_8

    .line 397
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    const v3, 0x7fffffff

    :cond_7
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->positionDisplayAt(IZ)V

    .line 401
    :cond_8
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 410
    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 411
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_3

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v1, p2, :cond_a

    .line 413
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 415
    :cond_a
    :goto_3
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 93
    check-cast p2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 837
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 839
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 861
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 863
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "includingParents"    # Z
    .param p4, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 869
    if-eqz p4, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 871
    .local v0, "prevFocusedStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 872
    .local v1, "wasContained":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionStackAt: Can only have one task on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 881
    if-eqz p4, :cond_5

    .line 882
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 883
    .local v2, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eq v2, v0, :cond_5

    .line 884
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 885
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 887
    const/4 v5, -0x1

    if-nez v2, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v6

    .line 888
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v5

    .line 885
    :goto_3
    invoke-static {v3, v4, v6, v5, p4}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedStack(IIIILjava/lang/String;)V

    .line 893
    .end local v2    # "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 894
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 856
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 858
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 843
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z
    .param p3, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 847
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 849
    return-void
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/wm/ActivityStack;

    .line 902
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 903
    .local v0, "home":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 904
    .local v1, "homeParent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 905
    .local v2, "homeParentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v2, :cond_2

    .line 907
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 908
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1

    .line 910
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_1

    .line 912
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 914
    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 916
    :cond_3
    move-object v5, v2

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskBehindHome"

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 920
    :goto_1
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1939
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1940
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 1938
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1942
    .end local v0    # "stackNdx":I
    :cond_0
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 1889
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_0
    return-void
.end method

.method remove()Lcom/android/server/wm/ActivityStack;
    .locals 11

    .line 1949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1951
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    .line 1952
    .local v1, "destroyContentOnRemoval":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1953
    .local v2, "toDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v3, 0x0

    .line 1961
    .local v3, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 1963
    .local v4, "numStacks":I
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    .line 1964
    .local v5, "splitScreenActivated":Z
    if-eqz v5, :cond_0

    .line 1965
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 1966
    .local v0, "rootStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    .line 1967
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 1969
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v1, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 1973
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v0, :cond_2

    .line 1974
    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    const v10, 0x7fffffff

    .line 1973
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1978
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1979
    move-object v3, v8

    goto :goto_4

    .line 1970
    :cond_3
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesImmediately()V

    .line 1983
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v9

    sub-int v9, v4, v9

    sub-int/2addr v6, v9

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 1966
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/2addr v6, v7

    goto :goto_1

    .line 1986
    .end local v6    # "stackNdx":I
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    .line 1987
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1988
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    .line 1989
    invoke-virtual {v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 1990
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_5

    .line 1991
    :cond_5
    if-eqz v0, :cond_6

    .line 1993
    const-string v6, "display-removed"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1997
    :cond_6
    :goto_5
    iput-boolean v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 1999
    return-object v3
.end method

.method protected removeChild(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 350
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackRemoved(Lcom/android/server/wm/ActivityStack;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 354
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .locals 11

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 582
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 583
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 584
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 585
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v5, :cond_0

    .line 586
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->cancelAnimation()V

    .line 591
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x2eda896

    const/4 v8, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v6, v7, v10, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 593
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    .line 583
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 581
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 597
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1872
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 1873
    return-void
.end method

.method removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 322
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1

    .line 324
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_2

    .line 326
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_3

    .line 328
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    .line 331
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    .line 334
    :cond_3
    :goto_0
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 6
    .param p1, "windowingModes"    # [I

    .line 1386
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 1393
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1395
    aget v2, p1, v1

    .line 1396
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1397
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1398
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1399
    goto :goto_2

    .line 1401
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 1402
    goto :goto_2

    .line 1404
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1394
    .end local v2    # "windowingMode":I
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1408
    .end local v1    # "j":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 1409
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1408
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1411
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 1387
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 8
    .param p1, "activityTypes"    # [I

    .line 1414
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_5

    .line 1421
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1423
    aget v2, p1, v1

    .line 1424
    .local v2, "activityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 1425
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1427
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3

    .line 1428
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_2
    if-ltz v5, :cond_2

    .line 1429
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1430
    .local v6, "childStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 1431
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    .end local v6    # "childStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v5    # "k":I
    :cond_2
    goto :goto_3

    .line 1434
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 1435
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1422
    .end local v2    # "activityType":I
    .end local v3    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1440
    .end local v1    # "j":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_7

    .line 1441
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1440
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1443
    .end local v1    # "i":I
    :cond_7
    return-void

    .line 1415
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_8
    :goto_5
    return-void
.end method

.method resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 834
    :cond_0
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1548
    if-eqz p2, :cond_0

    .line 1549
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1553
    .local v0, "windowingMode":I
    :goto_0
    if-nez v0, :cond_3

    .line 1554
    if-eqz p3, :cond_1

    .line 1555
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 1557
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1558
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 1560
    :cond_2
    if-nez v0, :cond_3

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 1565
    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1566
    if-eqz v0, :cond_4

    .line 1567
    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 1566
    :goto_1
    return v1
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 4
    .param p1, "hasVisible"    # Z

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 574
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 575
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean p1, v3, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    .line 574
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 572
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "considerKeyguardState"    # Z

    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1661
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1666
    :cond_0
    if-nez v0, :cond_3

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1668
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1670
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1671
    goto :goto_1

    .line 1673
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1674
    if-eqz v0, :cond_2

    .line 1675
    goto :goto_2

    .line 1667
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1682
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1683
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 1684
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1685
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1686
    const/4 v2, 0x0

    return-object v2

    .line 1689
    :cond_4
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1899
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    .line 1618
    .local v0, "inSplitScreenMode":Z
    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1621
    const/4 p1, 0x0

    goto :goto_0

    .line 1622
    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1623
    const/4 p1, 0x4

    .line 1625
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1626
    const/4 v1, 0x0

    return v1

    .line 1628
    :cond_2
    return p1
.end method
