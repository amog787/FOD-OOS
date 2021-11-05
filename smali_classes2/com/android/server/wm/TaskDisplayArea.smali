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

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    .line 178
    sput-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    .line 179
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

    .line 185
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 155
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 180
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 181
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    .line 186
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 187
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 188
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 189
    return-void
.end method

.method private adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I
    .locals 1
    .param p1, "s"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "layer"    # I

    .line 724
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .local v0, "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    move p2, v0

    .line 728
    .end local v0    # "layer":I
    .restart local p2    # "layer":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTaskAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAppTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .restart local v0    # "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    move p2, v0

    .line 733
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

    .line 746
    .local p2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 747
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 748
    .local v0, "stackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 749
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 750
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 751
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "startLayer":I
    .local v3, "startLayer":I
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 752
    if-eqz p4, :cond_0

    .line 753
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_1

    .line 752
    .end local p3    # "startLayer":I
    .restart local v3    # "startLayer":I
    :cond_0
    move p3, v3

    goto :goto_1

    .line 756
    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 748
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 761
    .local v1, "zBoostSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 762
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 763
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "startLayer":I
    .local v4, "startLayer":I
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 764
    if-eqz p4, :cond_3

    .line 765
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_3

    .line 764
    .end local p3    # "startLayer":I
    .restart local v4    # "startLayer":I
    :cond_3
    move p3, v4

    .line 761
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 768
    .end local v2    # "i":I
    :cond_4
    return p3
.end method

.method private findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 472
    .local v3, "curr":Lcom/android/server/wm/ActivityStack;
    if-ne v3, p1, :cond_0

    move v2, v1

    .line 473
    .local v2, "sameStack":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-gt v4, v5, :cond_1

    if-nez v2, :cond_1

    .line 474
    return v0

    .line 468
    .end local v2    # "sameStack":Z
    .end local v3    # "curr":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 446
    const/high16 v0, -0x80000000

    .line 447
    .local v0, "minPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 449
    move v0, v1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 460
    .local v1, "currentIndex":I
    if-le v1, v0, :cond_1

    .line 461
    move v0, v1

    .line 464
    .end local v1    # "currentIndex":I
    :cond_1
    return v0
.end method

.method private findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I
    .locals 4
    .param p1, "requestedPosition"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "adding"    # Z

    .line 501
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    .line 503
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 507
    .local v1, "minPosition":I
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_0

    .line 509
    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    .line 510
    const/4 p1, 0x0

    .line 513
    :cond_1
    :goto_0
    move v2, p1

    .line 514
    .local v2, "targetPosition":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 515
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 517
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 523
    .local v3, "prevPosition":I
    if-eq v2, p1, :cond_3

    if-nez p3, :cond_2

    if-ge v2, v3, :cond_3

    .line 524
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 527
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

    .line 557
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 558
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 559
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 560
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 561
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    return v0

    .line 560
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 558
    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_4

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 569
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 570
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 571
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 572
    .local v4, "appTokensCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_5

    .line 573
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 575
    return v0

    .line 572
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 569
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "appTokensCount":I
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 580
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

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 441
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 442
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1892
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1893
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

    .line 1805
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

    .line 1526
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1530
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1531
    return v1

    .line 1534
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 1535
    return v0

    .line 1538
    :cond_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 1544
    :cond_3
    if-nez p4, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 1545
    return v1

    .line 1548
    :cond_4
    if-nez p5, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 1549
    return v1

    .line 1551
    :cond_5
    return v0

    .line 1540
    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    .line 1541
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1540
    :goto_1
    return v0

    .line 1528
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

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    return-void
.end method

.method private moveSplitScreenTasksToFullScreen()V
    .locals 7

    .line 1494
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1495
    .local v0, "wct":Landroid/window/WindowContainerTransaction;
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1496
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1502
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1503
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1504
    .local v3, "root":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1505
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1504
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1502
    .end local v3    # "root":Lcom/android/server/wm/Task;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1509
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1510
    return-void
.end method

.method private updateLaunchRootTask(I)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "windowingMode"    # I

    .line 1091
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const/4 v0, 0x0

    return-object v0

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1096
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1097
    .local v1, "t":Lcom/android/server/wm/Task;
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 1098
    goto :goto_3

    .line 1101
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3

    .line 1102
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1103
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1104
    .local v4, "tt":Lcom/android/server/wm/Task;
    iget-boolean v5, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_2

    if-eq v4, v1, :cond_2

    .line 1105
    iput-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1106
    goto :goto_2

    .line 1102
    .end local v4    # "tt":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1110
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_3
    :goto_2
    return-object v1

    .line 1095
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1284
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    .line 1288
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x1081

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1289
    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1293
    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1294
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v7

    const/16 v8, 0x67

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1300
    .end local v0    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    .line 1306
    :goto_0
    sget v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    if-lez v0, :cond_3

    .line 1307
    sput-boolean v4, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    .line 1309
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1310
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

    .line 1311
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-virtual {v0, v3, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_5

    .line 1318
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    .line 1321
    :cond_5
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1324
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mUxPerf:Landroid/util/BoostFramework;

    .line 1325
    if-eqz v0, :cond_0

    .line 1326
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1328
    :cond_0
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 343
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

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result p2

    .line 347
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 351
    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    .line 98
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    return-void
.end method

.method addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 277
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
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

    .line 285
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 290
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

    .line 295
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    .line 299
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_6

    .line 300
    return-void

    .line 302
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 303
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 304
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_7

    .line 309
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1

    .line 305
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

    .line 310
    :cond_8
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 311
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_9

    .line 317
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    .line 320
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    goto :goto_1

    .line 312
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

    .line 323
    :cond_a
    :goto_1
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 4

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1229
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1230
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1231
    const/4 v1, 0x0

    return v1

    .line 1228
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1234
    .end local v0    # "stackNdx":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1235
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    .line 1236
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

    .line 1239
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 1240
    return v1
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 679
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 681
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 679
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 686
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 693
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 694
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 699
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 705
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v0

    .line 707
    add-int/lit8 v1, v0, 0x1

    .line 708
    .local v0, "layerForHomeAnimationLayer":I
    .local v1, "layer":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "layer":I
    .local v3, "layer":I
    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    .line 709
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "layer":I
    .restart local v1    # "layer":I
    iput v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    .line 710
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v1

    .line 714
    add-int/lit8 v3, v1, 0x1

    .line 715
    .local v1, "layerForBoostedAnimationLayer":I
    .restart local v3    # "layer":I
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 718
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 719
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 720
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 721
    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 1951
    const/4 v0, 0x1

    return v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 1026
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

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1051
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

    .line 1055
    :cond_0
    if-nez p2, :cond_1

    if-nez p6, :cond_1

    .line 1058
    const/4 p2, 0x1

    .line 1061
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_3

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1065
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2

    goto :goto_0

    .line 1066
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

    .line 1071
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

    .line 1079
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 1084
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getNextStackId()I

    move-result v8

    .line 1085
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

    .line 1075
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

    .line 1118
    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    move v3, p1

    if-ne v3, v2, :cond_1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1118
    :cond_1
    move/from16 v2, p2

    .line 1122
    :goto_0
    if-nez p5, :cond_2

    .line 1123
    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1124
    .end local p5    # "info":Landroid/content/pm/ActivityInfo;
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v4

    goto :goto_1

    .line 1122
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    move-object/from16 v10, p5

    .line 1128
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

    .line 1129
    .local v11, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_4

    .line 1131
    const/4 v3, 0x0

    move v12, v3

    .end local p1    # "windowingMode":I
    .local v3, "windowingMode":I
    goto :goto_3

    .line 1129
    .end local v3    # "windowingMode":I
    .restart local p1    # "windowingMode":I
    :cond_4
    move v12, v3

    .line 1134
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

    .line 1136
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v11, :cond_6

    .line 1137
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-virtual {v11, v3, v4}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1138
    if-eqz p4, :cond_8

    .line 1139
    move-object v1, v11

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    .line 1142
    :cond_6
    if-eqz p4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 1143
    invoke-virtual {v3, v12, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    .line 1145
    :cond_8
    :goto_6
    return-object v3
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2043
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

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2045
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2046
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_0

    .line 2047
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

    .line 2049
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_1

    .line 2050
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

    .line 2052
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2053
    .local v1, "triplePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2055
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 2056
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

    .line 2057
    invoke-virtual {v3, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2054
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2059
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

    .line 1963
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 1965
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1966
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1967
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1971
    .end local v0    # "stackNdx":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1972
    nop

    .line 1973
    return-void

    .line 1971
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1972
    throw v0
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isPreferredDisplayArea"    # Z
    .param p3, "result"    # Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_7

    .line 1337
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1338
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1339
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_6

    .line 1340
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

    .line 1345
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)V

    .line 1351
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    .line 1352
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_5

    .line 1355
    const/4 v2, 0x0

    .line 1356
    .local v2, "pulled":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 1357
    const/4 v2, 0x1

    .line 1360
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    .line 1366
    if-nez v2, :cond_3

    .line 1367
    sget-boolean v3, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v3, :cond_2

    .line 1368
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    .line 1370
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1374
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_4

    .line 1376
    const/4 v3, 0x6

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 1378
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1379
    return-void

    .line 1380
    .end local v2    # "pulled":Z
    :cond_5
    if-eqz p2, :cond_6

    .line 1384
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1336
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1390
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

    .line 1393
    :cond_8
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_9

    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->boostTopUX()V

    .line 1397
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1399
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

    .line 533
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 534
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    return v0

    .line 537
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 538
    return v0

    .line 541
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    return v0

    .line 544
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    return v0

    .line 548
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1
    .param p1, "animationLayer"    # I

    .line 773
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1204
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 1205
    const/4 v1, 0x0

    return-object v1

    .line 1209
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1210
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 1213
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1214
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 1217
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1220
    :cond_3
    return-object v1
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    .line 1153
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 1154
    return-object v0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1158
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1159
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    return-object v1

    .line 1157
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1164
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "userId"    # I

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1792
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 1793
    const/4 v1, 0x0

    return-object v1

    .line 1796
    :cond_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 1797
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 1798
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1796
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1799
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1800
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1801
    return-object v2
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 5
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1171
    .local v0, "currentWindowingMode":I
    :goto_0
    const/4 v1, 0x0

    .line 1172
    .local v1, "candidate":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1173
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1174
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    if-ne v3, p1, :cond_1

    .line 1175
    goto :goto_2

    .line 1177
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1178
    goto :goto_2

    .line 1181
    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    if-nez v1, :cond_3

    .line 1182
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1190
    move-object v1, v3

    .line 1191
    nop

    .line 1172
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1193
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1195
    return-object v1

    .line 1197
    :cond_4
    return-object v3

    .line 1199
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    return-object v1
.end method

.method getNextStackId()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1733
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "onTop"    # Z

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1745
    .local v0, "homeTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1748
    :cond_0
    return-object v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 950
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

    .line 967
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

    .line 966
    :goto_0
    move v11, p2

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 969
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 970
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1

    .line 971
    return-object v0

    .line 970
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    goto :goto_3

    .line 973
    :cond_2
    if-eqz v10, :cond_a

    .line 974
    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 975
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_3

    const v1, 0x7fffffff

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    .line 976
    .local v1, "position":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 978
    .local v2, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5

    .line 979
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 980
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    .line 981
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v2, :cond_8

    .line 982
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    .line 984
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v3

    if-nez v3, :cond_8

    .line 985
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_7

    .line 986
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_2

    .line 988
    :cond_7
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 992
    :cond_8
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-eq v3, v8, :cond_9

    .line 993
    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 995
    :cond_9
    return-object v0

    .line 973
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "position":I
    .end local v2    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_a
    :goto_3
    nop

    .line 997
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

    .line 1010
    if-eqz p2, :cond_0

    .line 1011
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1015
    .local v0, "windowingMode":I
    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1016
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

    .line 613
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v1, :cond_4

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 623
    .local v0, "topHomeTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 627
    .local v1, "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 629
    .local v2, "isHomeActivityLaunching":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 630
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v3

    .line 631
    .local v3, "orientation":I
    if-eq v3, v4, :cond_2

    .line 632
    return v3

    .line 639
    .end local v0    # "topHomeTask":Lcom/android/server/wm/Task;
    .end local v1    # "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "isHomeActivityLaunching":Z
    .end local v3    # "orientation":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayContentInjector;->getOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    .line 641
    .local v0, "forceOrientation":I
    if-eq v0, v4, :cond_3

    .line 642
    return v0

    .line 645
    :cond_3
    const/4 v1, -0x1

    return v1

    .line 649
    .end local v0    # "forceOrientation":I
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 650
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5, v6}, Lcom/android/server/wm/OpQuickReplyInjector;->getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    .line 651
    .local v5, "orientation":I
    if-eq v5, v4, :cond_5

    .line 652
    return v5

    .line 658
    .end local v5    # "orientation":I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v5

    .line 659
    .restart local v5    # "orientation":I
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v4, :cond_7

    if-eq v5, v0, :cond_7

    .line 661
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

    .line 664
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_6
    return v5

    .line 667
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

    .line 672
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

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootRecentsTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    return-object v1

    .line 249
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "rootTaskId"    # I

    .line 935
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 937
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 938
    return-object v1

    .line 935
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 941
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 196
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 198
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 201
    :cond_1
    if-ne p1, v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 203
    :cond_2
    if-ne p1, v1, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 208
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez p2, :cond_4

    .line 209
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 212
    return-object v1

    .line 214
    :cond_4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    return-object v1

    .line 206
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStackAt(I)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "index"    # I

    .line 1728
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected getStackCount()I
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    .line 224
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

    .line 1761
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

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 264
    return-object v0
.end method

.method hasPinnedTask()Z
    .locals 1

    .line 1883
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

    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 1918
    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isSplitScreenModeActivated()Z
    .locals 2

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1753
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

    .line 1898
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1899
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

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1666
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1667
    .local v3, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1668
    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    .line 1665
    .end local v3    # "current":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1671
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1661
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
    .locals 14
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1605
    move-object v7, p0

    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 1606
    invoke-static/range {p1 .. p4}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    return v8

    .line 1612
    :cond_1
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1613
    .local v0, "supportsMultiWindow":Z
    iget-object v1, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1614
    .local v1, "supportsSplitScreen":Z
    iget-object v2, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1615
    .local v2, "supportsFreeform":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1616
    .local v3, "supportsPip":Z
    if-eqz v0, :cond_3

    .line 1617
    if-eqz p3, :cond_2

    .line 1618
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    .line 1619
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_1

    .line 1621
    :cond_2
    if-eqz p2, :cond_3

    .line 1622
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    .line 1623
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 1624
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    .line 1625
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_1

    .line 1629
    :cond_3
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "supportsMultiWindow":Z
    .end local v1    # "supportsSplitScreen":Z
    .end local v2    # "supportsFreeform":Z
    .end local v3    # "supportsPip":Z
    .local v10, "supportsMultiWindow":Z
    .local v11, "supportsSplitScreen":Z
    .local v12, "supportsFreeform":Z
    .local v13, "supportsPip":Z
    :goto_1
    if-eqz p1, :cond_4

    .line 1630
    move-object v0, p0

    move v1, p1

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v8, v9

    .line 1629
    :goto_2
    return v8
.end method

.method public synthetic lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1497
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_0
    return-void
.end method

.method public synthetic lambda$onParentChanged$1$TaskDisplayArea()V
    .locals 4

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 793
    const-string v2, "animationLayer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 794
    const-string v2, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 795
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 796
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 797
    const-string v3, "boostedAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 798
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 799
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 801
    const-string v3, "homeAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 805
    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 806
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 808
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 809
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 810
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 811
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 813
    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1777
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 1778
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1779
    return-void

    .line 1781
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1782
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1766
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1769
    :cond_0
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 9
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1814
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1816
    return-void

    .line 1819
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    .line 1820
    .local v1, "isRootTask":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 1824
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1828
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

    .line 1829
    .local v3, "numStacks":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_2
    if-ge v4, v3, :cond_9

    .line 1830
    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_3

    .line 1831
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    :goto_3
    nop

    .line 1832
    .local v5, "s":Lcom/android/server/wm/ActivityStack;
    if-ne v5, p1, :cond_4

    .line 1833
    goto :goto_5

    .line 1835
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 1836
    .local v6, "winMode":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    .line 1838
    .local v7, "isValidWindowingMode":Z
    :cond_6
    :goto_4
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 1840
    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1841
    .local v0, "position":I
    if-eqz v1, :cond_7

    .line 1842
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_6

    .line 1844
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1846
    goto :goto_6

    .line 1829
    .end local v0    # "position":I
    .end local v5    # "s":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "winMode":I
    .end local v7    # "isValidWindowingMode":Z
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1849
    .end local v4    # "stackNdx":I
    :cond_9
    :goto_6
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1857
    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_3

    .line 1861
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1862
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 1870
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1871
    .local v1, "stackIndex":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1872
    .local v2, "behindStackIndex":I
    if-gt v1, v2, :cond_2

    .line 1873
    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1874
    .local v3, "insertIndex":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1875
    .local v5, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1876
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_1

    .line 1878
    :cond_3
    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1880
    :goto_1
    return-void

    .line 1863
    .end local v1    # "stackIndex":I
    .end local v2    # "behindStackIndex":I
    .end local v3    # "insertIndex":I
    .end local v5    # "position":I
    :cond_4
    :goto_2
    return-void

    .line 1858
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_5
    :goto_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 2
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 790
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_0

    .line 815
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 817
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 818
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 819
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 820
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 823
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 824
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 825
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 827
    :goto_0
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .locals 1

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 1467
    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "toTop"    # Lcom/android/server/wm/ActivityStack;

    .line 1470
    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1472
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1473
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveSplitScreenTasksToFullScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    if-eqz p1, :cond_0

    .line 1476
    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1477
    .local v1, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1478
    .local v2, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 1486
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1489
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1490
    .end local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "homeStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 1491
    return-void

    .line 1475
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_4

    .line 1476
    move-object v2, p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1477
    .local v2, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1478
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-eqz p1, :cond_7

    .line 1486
    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1489
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1490
    .end local v2    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    throw v1
.end method

.method onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1944
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1944
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1947
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onStackRemoved(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 830
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 831
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

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_1

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 839
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 272
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 274
    :cond_0
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 7
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, "someActivityPaused":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1256
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1257
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1258
    .local v3, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3

    .line 1259
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1260
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1264
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    const-string v5, "WindowManager"

    if-eqz v4, :cond_1

    .line 1265
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip pausing stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1266
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    goto :goto_1

    .line 1271
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_2

    .line 1272
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

    .line 1275
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1255
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1279
    .end local v1    # "stackNdx":I
    :cond_4
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 376
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

    .line 377
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

    .line 382
    .local v4, "moveToBottom":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 383
    .local v5, "wasContained":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 384
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 387
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    .line 389
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

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 394
    .local v1, "currentPosition":I
    invoke-super {p0, v1, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 395
    return-void

    .line 399
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

    .line 400
    const/4 p3, 0x0

    .line 402
    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result v7

    .line 403
    .local v7, "targetPosition":I
    invoke-super {p0, v7, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 405
    if-eqz p3, :cond_8

    if-nez v0, :cond_6

    if-eqz v4, :cond_8

    .line 409
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    const v3, 0x7fffffff

    :cond_7
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->positionDisplayAt(IZ)V

    .line 413
    :cond_8
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 422
    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 423
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_3

    .line 424
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v1, p2, :cond_a

    .line 425
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 427
    :cond_a
    :goto_3
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 98
    check-cast p2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 849
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 851
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 873
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 875
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "includingParents"    # Z
    .param p4, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 881
    if-eqz p4, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 883
    .local v0, "prevFocusedStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 884
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

    .line 885
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

    .line 891
    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 893
    if-eqz p4, :cond_5

    .line 894
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 895
    .local v2, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eq v2, v0, :cond_5

    .line 896
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 897
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 899
    const/4 v5, -0x1

    if-nez v2, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v6

    .line 900
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v5

    .line 897
    :goto_3
    invoke-static {v3, v4, v6, v5, p4}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedStack(IIIILjava/lang/String;)V

    .line 905
    .end local v2    # "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 906
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 870
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 855
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z
    .param p3, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 859
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 861
    return-void
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/wm/ActivityStack;

    .line 914
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 915
    .local v0, "home":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 916
    .local v1, "homeParent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 917
    .local v2, "homeParentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v2, :cond_2

    .line 919
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1

    .line 922
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_1

    .line 924
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 926
    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 928
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

    .line 932
    :goto_1
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1977
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1978
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 1976
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1980
    .end local v0    # "stackNdx":I
    :cond_0
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 1927
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    :cond_0
    return-void
.end method

.method remove()Lcom/android/server/wm/ActivityStack;
    .locals 11

    .line 1987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1989
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    .line 1990
    .local v1, "destroyContentOnRemoval":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1991
    .local v2, "toDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v3, 0x0

    .line 1999
    .local v3, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 2001
    .local v4, "numStacks":I
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    .line 2002
    .local v5, "splitScreenActivated":Z
    if-eqz v5, :cond_0

    .line 2003
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 2004
    .local v0, "rootStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    .line 2005
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2007
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v1, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 2011
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v0, :cond_2

    .line 2012
    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    const v10, 0x7fffffff

    .line 2011
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2016
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 2017
    move-object v3, v8

    goto :goto_4

    .line 2008
    :cond_3
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesImmediately()V

    .line 2021
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v9

    sub-int v9, v4, v9

    sub-int/2addr v6, v9

    .line 2022
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 2004
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/2addr v6, v7

    goto :goto_1

    .line 2024
    .end local v6    # "stackNdx":I
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    .line 2025
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2026
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    .line 2027
    invoke-virtual {v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2028
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_5

    .line 2029
    :cond_5
    if-eqz v0, :cond_6

    .line 2031
    const-string v6, "display-removed"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2035
    :cond_6
    :goto_5
    iput-boolean v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 2037
    return-object v3
.end method

.method protected removeChild(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 355
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackRemoved(Lcom/android/server/wm/ActivityStack;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 362
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    .line 366
    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .locals 11

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 594
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 595
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 596
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 597
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

    .line 598
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->cancelAnimation()V

    .line 603
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

    .line 605
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    .line 595
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 593
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 609
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1903
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 1907
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1908
    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1911
    :cond_0
    return-void
.end method

.method removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 327
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1

    .line 329
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_2

    .line 331
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_3

    .line 333
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    .line 336
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    .line 339
    :cond_3
    :goto_0
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 6
    .param p1, "windowingModes"    # [I

    .line 1406
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 1413
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1415
    aget v2, p1, v1

    .line 1416
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1417
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1418
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1419
    goto :goto_2

    .line 1421
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 1422
    goto :goto_2

    .line 1424
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1414
    .end local v2    # "windowingMode":I
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1428
    .end local v1    # "j":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 1429
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1428
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1431
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 1407
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 8
    .param p1, "activityTypes"    # [I

    .line 1434
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_5

    .line 1441
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1443
    aget v2, p1, v1

    .line 1444
    .local v2, "activityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 1445
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1447
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3

    .line 1448
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_2
    if-ltz v5, :cond_2

    .line 1449
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1450
    .local v6, "childStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 1451
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    .end local v6    # "childStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v5    # "k":I
    :cond_2
    goto :goto_3

    .line 1454
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 1455
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1442
    .end local v2    # "activityType":I
    .end local v3    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1460
    .end local v1    # "j":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_7

    .line 1461
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1460
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1463
    .end local v1    # "i":I
    :cond_7
    return-void

    .line 1435
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_8
    :goto_5
    return-void
.end method

.method resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gez v0, :cond_0

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 846
    :cond_0
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1568
    if-eqz p2, :cond_0

    .line 1569
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1573
    .local v0, "windowingMode":I
    :goto_0
    if-nez v0, :cond_3

    .line 1574
    if-eqz p3, :cond_1

    .line 1575
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 1577
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1578
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 1580
    :cond_2
    if-nez v0, :cond_3

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 1585
    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1586
    if-eqz v0, :cond_4

    .line 1587
    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 1586
    :goto_1
    return v1
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 4
    .param p1, "hasVisible"    # Z

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 586
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 587
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean p1, v3, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    .line 586
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 584
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 590
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "considerKeyguardState"    # Z

    .line 1688
    const/4 v0, 0x0

    .line 1689
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1690
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1691
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1695
    :cond_0
    if-nez v0, :cond_3

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1697
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1699
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1700
    goto :goto_1

    .line 1702
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_2

    .line 1704
    goto :goto_2

    .line 1696
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1711
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1712
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 1713
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1714
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1715
    const/4 v2, 0x0

    return-object v2

    .line 1718
    :cond_4
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1937
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    .line 1647
    .local v0, "inSplitScreenMode":Z
    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1650
    const/4 p1, 0x0

    goto :goto_0

    .line 1651
    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1652
    const/4 p1, 0x4

    .line 1654
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1655
    const/4 v1, 0x0

    return v1

    .line 1657
    :cond_2
    return p1
.end method
