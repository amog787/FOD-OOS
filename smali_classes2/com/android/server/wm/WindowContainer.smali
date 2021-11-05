.class Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;
.implements Lcom/android/server/wm/SurfaceFreezer$Freezable;
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$RemoteToken;,
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;,
        Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;,
        Lcom/android/server/wm/WindowContainer$AnimationFlags;,
        Lcom/android/server/wm/WindowContainer$AnimationLayer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer<",
        "TE;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;",
        "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
        "Lcom/android/server/wm/SurfaceFreezer$Freezable;",
        "Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;"
    }
.end annotation


# static fields
.field static final ANIMATION_LAYER_BOOSTED:I = 0x1

.field static final ANIMATION_LAYER_HOME:I = 0x2

.field static final ANIMATION_LAYER_STANDARD:I = 0x0

.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field private mAnyParentAnimating:Z

.field mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field mBLASTSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field protected final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mCommittedReparentToAnimationLeash:Z

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field protected mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsFocusable:Z

.field mIsNotificationRemoteInputeDraft:Z

.field mIsQuickReplyApp:Z

.field private mLastLayer:I

.field private mLastMagnificationSpec:Landroid/view/MagnificationSpec;

.field protected mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

.field private mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field protected final mLastSurfacePosition:Landroid/graphics/Point;

.field mLaunchTaskBehind:Z

.field mLaunchingMiniZoomFromRecent:Z

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z

.field protected mOrientation:I

.field private mParent:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

.field mReparenting:Z

.field mSourceBoundFromIntent:Landroid/graphics/Rect;

.field mStackShown:Z

.field private final mSurfaceAnimationSources:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

.field mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

.field private final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpPos:Landroid/graphics/Point;

.field final mTmpPrevBounds:Landroid/graphics/Rect;

.field protected final mTmpRect:Landroid/graphics/Rect;

.field mTransit:I

.field mTransitFlags:I

.field private mTreeWeight:I

.field mUsingBLASTSyncTransaction:Z

.field final mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field mWaitingSyncId:I

.field mWindowModeHide:Z

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;

.field mZoomBubble:Z

.field mZoomLaunchFlags:I

.field mZoomPkg:Ljava/lang/String;

.field mZoomUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 321
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 159
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 171
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 178
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 179
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 204
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 206
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 207
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 210
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 301
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 302
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 303
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 307
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 313
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 315
    new-instance v2, Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v2}, Lcom/android/server/wm/BLASTSyncEngine;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 317
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mUsingBLASTSyncTransaction:Z

    .line 499
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 500
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 2769
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSourceBoundFromIntent:Landroid/graphics/Rect;

    .line 2770
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mIsNotificationRemoteInputeDraft:Z

    .line 322
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 323
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 324
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 325
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 326
    new-instance v0, Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceFreezer;-><init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 327
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowContainer;

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method private doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2546
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2547
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2549
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2550
    return-void
.end method

.method private forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z
    .locals 11
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)Z"
        }
    .end annotation

    .line 1453
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    move-object v7, p0

    const/4 v8, 0x1

    if-eqz p4, :cond_2

    .line 1454
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_1

    .line 1455
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1456
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1455
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    return v8

    .line 1454
    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .end local v9    # "i":I
    :cond_1
    goto :goto_2

    .line 1461
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    .line 1462
    .local v9, "count":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_4

    .line 1463
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1464
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1463
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1465
    return v8

    .line 1462
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1470
    .end local v9    # "count":I
    .end local v10    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 2800
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer$RemoteToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method private getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;
    .locals 10
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1556
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p4, :cond_2

    .line 1557
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1558
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1559
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1558
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1560
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1561
    return-object v1

    .line 1557
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 1565
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1566
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1567
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1568
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1567
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1569
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    .line 1570
    return-object v2

    .line 1566
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1575
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParents(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 1864
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 1865
    move-object v0, p0

    .line 1867
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1868
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1869
    if-nez v0, :cond_0

    .line 1870
    return-void

    .line 1869
    :cond_0
    goto :goto_0
.end method

.method private getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .locals 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 651
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 652
    .local v0, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 654
    .local v2, "childI":Lcom/android/server/wm/WindowContainer;
    if-ne p1, v2, :cond_0

    .line 655
    goto :goto_1

    .line 657
    :cond_0
    iget v3, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v3

    .line 652
    .end local v2    # "childI":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_2

    .line 660
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 665
    return v0
.end method

.method private getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;
    .locals 10
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 1751
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    if-eqz p4, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1754
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1753
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1755
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    .line 1756
    return-object v1

    .line 1752
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 1760
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1761
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1762
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1763
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1762
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1764
    .local v2, "t":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3

    .line 1765
    return-object v2

    .line 1761
    .end local v2    # "t":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1770
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$applyAnimationUnchecked$13(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0
    .param p0, "type"    # I
    .param p1, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2391
    return-void
.end method

.method static synthetic lambda$getActivityAbove$1(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "above"    # Lcom/android/server/wm/ActivityRecord;

    .line 1595
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getActivityBelow$2(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 1600
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getBottomMostActivity$3(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1605
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getBottomMostTask$11(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 1701
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTaskAbove$9(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "above"    # Lcom/android/server/wm/Task;

    .line 1693
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTaskBelow$10(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "below"    # Lcom/android/server/wm/Task;

    .line 1697
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$5(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1616
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1618
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1620
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1623
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getTopMostActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1609
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopMostTask$12(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 1705
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$isAppTransitioning$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/wm/ActivityRecord;

    .line 952
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    return v0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .locals 27
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    .line 2402
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2404
    return-object v1

    .line 2407
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 2408
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 2409
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    iget v12, v13, Landroid/view/DisplayInfo;->appWidth:I

    .line 2410
    .local v12, "width":I
    iget v11, v13, Landroid/view/DisplayInfo;->appHeight:I

    .line 2411
    .local v11, "height":I
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x5e6e0e83

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2415
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v0

    .line 2416
    .local v10, "frame":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v0, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v7, v3, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2418
    .local v7, "displayFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    .line 2419
    .local v9, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 2420
    .local v8, "stableInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 2421
    .local v6, "surfaceInsets":Landroid/graphics/Rect;
    invoke-virtual {v14, v10, v9, v8, v6}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2423
    iget-boolean v0, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_2

    .line 2427
    const/4 v0, 0x0

    move/from16 v16, v0

    .end local p3    # "enter":Z
    .local v0, "enter":Z
    goto :goto_0

    .line 2423
    .end local v0    # "enter":Z
    .restart local p3    # "enter":Z
    :cond_2
    move/from16 v16, p3

    .line 2429
    .end local p3    # "enter":Z
    .local v16, "enter":Z
    :goto_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move/from16 v4, v16

    .local v4, "protoLogParam1":Z
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "protoLogParam3":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "protoLogParam4":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v2, v20

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v17, v2, v3

    const/4 v3, 0x4

    aput-object v18, v2, v3

    move-object/from16 p3, v0

    move/from16 v20, v4

    const/16 v0, 0xc

    const v3, 0x6d22f9b6

    const/4 v4, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Z
    .local v20, "protoLogParam1":Z
    .local p3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v1, v3, v0, v4, v2}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2437
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .end local v17    # "protoLogParam3":Ljava/lang/String;
    .end local v18    # "protoLogParam4":Ljava/lang/String;
    .end local v20    # "protoLogParam1":Z
    .end local p3    # "protoLogParam0":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    const-string v5, "WindowManager"

    if-nez v0, :cond_a

    iget-boolean v0, v14, Lcom/android/server/wm/WindowContainer;->mIsQuickReplyApp:Z

    if-eqz v0, :cond_4

    move-object/from16 v18, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move v4, v11

    move v3, v12

    move-object/from16 v17, v13

    move-object/from16 v21, v15

    move-object v15, v5

    goto/16 :goto_3

    .line 2443
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2448
    .local v4, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inFreeformWindowingMode()Z

    move-result v17

    .line 2448
    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v2, p2

    move/from16 v19, v3

    move/from16 v3, v16

    move-object/from16 v20, v4

    .end local v4    # "displayConfig":Landroid/content/res/Configuration;
    .local v20, "displayConfig":Landroid/content/res/Configuration;
    move/from16 v4, v19

    move-object/from16 v21, v15

    move-object v15, v5

    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v21, "displayContent":Lcom/android/server/wm/DisplayContent;
    move/from16 v5, v18

    move-object/from16 v18, v6

    .end local v6    # "surfaceInsets":Landroid/graphics/Rect;
    .local v18, "surfaceInsets":Landroid/graphics/Rect;
    move-object v6, v10

    move-object/from16 v22, v8

    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .local v22, "stableInsets":Landroid/graphics/Rect;
    move-object v8, v9

    move-object/from16 v23, v9

    .end local v9    # "insets":Landroid/graphics/Rect;
    .local v23, "insets":Landroid/graphics/Rect;
    move-object/from16 v9, v18

    move-object/from16 v24, v10

    .end local v10    # "frame":Landroid/graphics/Rect;
    .local v24, "frame":Landroid/graphics/Rect;
    move-object/from16 v10, v22

    move/from16 v25, v11

    .end local v11    # "height":I
    .local v25, "height":I
    move/from16 v11, p4

    move/from16 v26, v12

    .end local v12    # "width":I
    .local v26, "width":I
    move/from16 v12, v17

    move-object/from16 v17, v13

    .end local v13    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v13, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2455
    .local v0, "a":Landroid/view/animation/Animation;
    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHome()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v16, :cond_5

    iget-object v1, v14, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v1, :cond_5

    .line 2457
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->createAnimationForLauncherExit()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2461
    :cond_5
    if-eqz v0, :cond_9

    .line 2462
    if-eqz v0, :cond_6

    .line 2466
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2468
    :cond_6
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_8

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_7
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2469
    invoke-static {v15, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    :cond_8
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2473
    .local v1, "containingWidth":I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2474
    .local v2, "containingHeight":I
    move/from16 v4, v25

    move/from16 v3, v26

    .end local v25    # "height":I
    .end local v26    # "width":I
    .local v3, "width":I
    .local v4, "height":I
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2475
    iget-object v5, v14, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_2

    .line 2461
    .end local v1    # "containingWidth":I
    .end local v2    # "containingHeight":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local v25    # "height":I
    .restart local v26    # "width":I
    :cond_9
    move/from16 v4, v25

    move/from16 v3, v26

    .line 2477
    .end local v25    # "height":I
    .end local v26    # "width":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    :goto_2
    return-object v0

    .line 2437
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v17    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v18    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v20    # "displayConfig":Landroid/content/res/Configuration;
    .end local v21    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v22    # "stableInsets":Landroid/graphics/Rect;
    .end local v23    # "insets":Landroid/graphics/Rect;
    .end local v24    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v8    # "stableInsets":Landroid/graphics/Rect;
    .restart local v9    # "insets":Landroid/graphics/Rect;
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v11    # "height":I
    .restart local v12    # "width":I
    .restart local v13    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move v4, v11

    move v3, v12

    move-object/from16 v17, v13

    move-object/from16 v21, v15

    move-object v15, v5

    .line 2438
    .end local v6    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "insets":Landroid/graphics/Rect;
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v11    # "height":I
    .end local v12    # "width":I
    .end local v13    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v17    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v22    # "stableInsets":Landroid/graphics/Rect;
    .restart local v23    # "insets":Landroid/graphics/Rect;
    .restart local v24    # "frame":Landroid/graphics/Rect;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickReply: disable anim for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const/4 v0, 0x0

    return-object v0
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .line 2040
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 2041
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    if-nez v0, :cond_0

    .line 2042
    new-instance v1, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V

    move-object v0, v1

    .line 2044
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 2045
    return-object v0
.end method

.method private onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 567
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 568
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 569
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 570
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 571
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 574
    return-void
.end method

.method private onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 595
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 596
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 597
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 598
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 599
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 602
    return-void
.end method

.method private processForAllActivitiesWithBoundary(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z
    .locals 6
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")Z"
        }
    .end annotation

    .line 1476
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    if-ne p6, p2, :cond_0

    .line 1477
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 1478
    if-nez p3, :cond_0

    return v0

    .line 1481
    :cond_0
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Z)Z

    move-result v0

    return v0

    .line 1485
    :cond_1
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v0

    return v0
.end method

.method private processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1581
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    if-eq p6, p2, :cond_0

    if-nez p2, :cond_1

    .line 1582
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 1583
    if-nez p3, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1586
    :cond_1
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_2

    .line 1587
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1590
    :cond_2
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .locals 6
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 1776
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    if-eq p6, p2, :cond_0

    if-nez p2, :cond_1

    .line 1777
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 1778
    if-nez p3, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1781
    :cond_1
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_2

    .line 1782
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 1785
    :cond_2
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    .line 545
    const-string v3, "\n"

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    :goto_0
    const/high16 v0, -0x80000000

    if-gez p2, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 549
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_4

    if-ne p2, v2, :cond_3

    goto :goto_1

    .line 550
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", children number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 551
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_4
    :goto_1
    if-ne p2, v2, :cond_5

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    goto :goto_2

    .line 556
    :cond_5
    if-ne p2, v0, :cond_6

    .line 557
    const/4 p2, 0x0

    .line 560
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 563
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 564
    return-void
.end method

.method protected addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 511
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 518
    .local v0, "positionToAdd":I
    if-eqz p2, :cond_3

    .line 519
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 520
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 522
    move v0, v2

    .line 523
    goto :goto_2

    .line 520
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 529
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 535
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 536
    return-void
.end method

.method addChildrenToSyncSet(I)Z
    .locals 4
    .param p1, "localId"    # I

    .line 2856
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 2858
    .local v0, "willSync":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2859
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2860
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2858
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2862
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .locals 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)Z"
        }
    .end annotation

    .line 2254
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-eqz v0, :cond_1

    .line 2255
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x1f901cf

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2258
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2259
    return v1

    .line 2266
    :cond_1
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "WC#applyAnimation"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2267
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2268
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    goto :goto_0

    .line 2270
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2273
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2274
    nop

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    return v0

    .line 2273
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2274
    throw v2
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2376
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;

    move-result-object v0

    .line 2378
    .local v0, "adapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/AnimationAdapter;

    .line 2379
    .local v1, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/AnimationAdapter;

    .line 2380
    .local v2, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v1, :cond_2

    .line 2381
    if-eqz p5, :cond_0

    .line 2382
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2384
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 2386
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2389
    :cond_1
    if-eqz v2, :cond_2

    .line 2390
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v3, v3, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    sget-object v6, Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 2394
    :cond_2
    return-void
.end method

.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 2072
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 2074
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2075
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_1

    .line 2077
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 2078
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2079
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 2078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2082
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 2788
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 2783
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method assignChildLayers()V
    .locals 1

    .line 1981
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1983
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1961
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1965
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1966
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1967
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1968
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1969
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "layer":I
    .local v3, "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 1965
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "layer":I
    .restart local v0    # "layer":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1972
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1973
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1974
    .restart local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1975
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "layer":I
    .restart local v3    # "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 1972
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "layer":I
    .restart local v0    # "layer":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1978
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 1925
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1926
    .local v0, "changed":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1927
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1928
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1929
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1931
    :cond_2
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 1934
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1935
    .local v0, "changed":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1936
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1937
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1938
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1940
    :cond_2
    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 2494
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .line 2191
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2192
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 2193
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 2194
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .locals 2

    .line 1099
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1101
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 1099
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1103
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2085
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    .line 2086
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2087
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2089
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 2090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2091
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 2090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2093
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public commitPendingTransaction()V
    .locals 0

    .line 2513
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2514
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 10
    .param p1, "other"    # Lcom/android/server/wm/WindowContainer;

    .line 1812
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-ne p0, p1, :cond_0

    .line 1813
    const/4 v0, 0x0

    return v0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_2

    .line 1817
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1818
    .local v0, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 1821
    .end local v0    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 1822
    .local v0, "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 1824
    .local v3, "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 1825
    invoke-direct {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 1828
    const/4 v4, 0x0

    .line 1829
    .local v4, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1830
    .local v5, "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1831
    .local v6, "otherTop":Lcom/android/server/wm/WindowContainer;
    :goto_1
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-ne v5, v6, :cond_3

    .line 1832
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v4, v7

    .line 1833
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1834
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v5, v7

    .line 1835
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    goto :goto_1

    .line 1839
    :cond_3
    if-eqz v4, :cond_7

    .line 1846
    if-ne v4, p0, :cond_4

    .line 1847
    nop

    .line 1858
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1859
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1847
    return v2

    .line 1848
    :cond_4
    if-ne v4, p1, :cond_5

    .line 1849
    nop

    .line 1858
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1859
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1849
    return v1

    .line 1854
    :cond_5
    :try_start_1
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1855
    .local v7, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v8, v9, :cond_6

    .line 1856
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1858
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1859
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1855
    return v1

    .line 1840
    .end local v7    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_7
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No in the same hierarchy this="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " other="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local v3    # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local p0    # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .end local p1    # "other":Lcom/android/server/wm/WindowContainer;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1858
    .end local v4    # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "otherTop":Lcom/android/server/wm/WindowContainer;
    .restart local v0    # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v3    # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local p0    # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .restart local p1    # "other":Lcom/android/server/wm/WindowContainer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1859
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1860
    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 117
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 1
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 2482
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Z)Landroid/view/RemoteAnimationTarget;
    .locals 1
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .param p2, "isOpening"    # Z

    .line 2489
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method createSurfaceControl(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 438
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 439
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2669
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ContainerAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_1

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastOrientationSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 2008
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    .line 2009
    .local v0, "isVisible":Z
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    if-nez v0, :cond_0

    .line 2010
    return-void

    .line 2013
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2014
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, p4}, Lcom/android/server/wm/ConfigurationContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2015
    const-wide v3, 0x10500000002L

    iget v5, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2016
    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2017
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2018
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2022
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2023
    const-wide v4, 0x20b00000005L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2024
    .local v4, "childToken":J
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 2025
    .local v6, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getProtoFieldId()J

    move-result-wide v7

    invoke-virtual {v6, p1, v7, v8, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2026
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2022
    .end local v4    # "childToken":J
    .end local v6    # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2028
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2029
    return-void
.end method

.method endDelayingAnimationStart()V
    .locals 1

    .line 2654
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 2655
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 1313
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method forAllActivities(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1400
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1401
    return-void
.end method

.method forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 1416
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p2, :cond_3

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1418
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1419
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 1420
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 1422
    :cond_0
    if-gez v1, :cond_1

    .line 1423
    return-void

    .line 1425
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1418
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1427
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 1428
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1429
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1428
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1432
    .end local v0    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method forAllActivities(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1361
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Z)Z

    move-result v0

    return v0
.end method

.method final forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z
    .locals 7
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)Z"
        }
    .end annotation

    .line 1446
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v0

    return v0
.end method

.method forAllActivities(Ljava/util/function/Function;Z)Z
    .locals 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 1379
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 1380
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1381
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1382
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 1383
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    .line 1385
    :cond_0
    if-gez v3, :cond_1

    .line 1386
    return v0

    .line 1388
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 1381
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1390
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 1391
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1392
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Function;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    .line 1391
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1396
    .end local v2    # "i":I
    :cond_6
    :goto_2
    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 1801
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1802
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 1801
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1804
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 1679
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1680
    .local v0, "count":I
    if-eqz p2, :cond_1

    .line 1681
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1682
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1681
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 1685
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1686
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1648
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1649
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    return v1

    .line 1648
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1653
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 1662
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 1663
    return-void
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 1666
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1667
    .local v0, "count":I
    if-eqz p2, :cond_1

    .line 1668
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1669
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 1668
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 1672
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1673
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1676
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1639
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1640
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1641
    return v1

    .line 1639
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1644
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 1627
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperWindowToken;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 1627
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1630
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 1355
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object v0

    .line 1356
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 1357
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 1358
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1337
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 1338
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1339
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    return v0

    .line 1338
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 1345
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1346
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1347
    return v0

    .line 1345
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1351
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 879
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 881
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 879
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 883
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1500
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 7
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1549
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1504
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .param p3, "boundary"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1509
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p2, :cond_3

    .line 1510
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1511
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1513
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v1, p3, :cond_0

    return-object p3

    .line 1515
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1516
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    .line 1517
    return-object v2

    .line 1510
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 1521
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1522
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 1523
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1525
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v2, p3, :cond_4

    return-object p3

    .line 1527
    :cond_4
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1528
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_5

    .line 1529
    return-object v3

    .line 1522
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1534
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1595
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$WskrGbNwLeexLlAXUNUyGLhHEWA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$WskrGbNwLeexLlAXUNUyGLhHEWA;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1600
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$sh5zVifGKSmT1fuGQxK_5_eAZ20;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$sh5zVifGKSmT1fuGQxK_5_eAZ20;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final getAnimatingContainer()Lcom/android/server/wm/WindowContainer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2640
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;
    .locals 3
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 2595
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2596
    return-object p0

    .line 2598
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 2599
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2600
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_2

    .line 2601
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2602
    return-object v0

    .line 2604
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 2607
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 2608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2609
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    and-int/lit8 v2, p1, -0x3

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2611
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_3

    .line 2612
    return-object v1

    .line 2608
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2616
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .locals 1

    .line 2565
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;
    .locals 25
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/AnimationAdapter;",
            ">;"
        }
    .end annotation

    .line 2292
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object/from16 v6, p0

    move/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v13

    .line 2295
    .local v13, "appStackClipMode":I
    invoke-virtual {v6, v13}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v12

    .line 2296
    .local v12, "screenBounds":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2297
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowContainer;->getAnimationPosition(Landroid/graphics/Point;)V

    .line 2298
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-nez v0, :cond_0

    .line 2300
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2302
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2304
    nop

    .line 2305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v23

    .line 2306
    .local v23, "controller":Lcom/android/server/wm/RemoteAnimationController;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move/from16 v24, v0

    .line 2310
    .local v24, "isChanging":Z
    const/4 v0, 0x0

    if-eqz v23, :cond_3

    iget-object v3, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2311
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v1

    .line 2312
    .local v7, "localBounds":Landroid/graphics/Rect;
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2313
    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 2315
    if-eqz v24, :cond_2

    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    :cond_2
    move-object v5, v0

    .line 2314
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v3, v7

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v0

    .line 2316
    .local v0, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2317
    .end local v7    # "localBounds":Landroid/graphics/Rect;
    .local v0, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    move-object v1, v12

    move v2, v13

    goto/16 :goto_5

    .end local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :cond_3
    if-eqz v24, :cond_5

    .line 2318
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    .line 2319
    .local v1, "durationScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2320
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2322
    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v5, v5, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move/from16 v19, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    .line 2326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2328
    .local v3, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v4, v4, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v4, :cond_4

    .line 2329
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v5, v5, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move/from16 v19, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    .line 2331
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    goto :goto_1

    .line 2332
    :cond_4
    nop

    :goto_1
    nop

    .line 2333
    .local v0, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2334
    .local v4, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    iput v14, v6, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 2335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v5

    iput v5, v6, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 2336
    .end local v0    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v1    # "durationScale":F
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    move-object v0, v4

    move-object v1, v12

    move v2, v13

    goto/16 :goto_5

    .line 2337
    .end local v4    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :cond_5
    if-nez v13, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    iput-boolean v3, v6, Lcom/android/server/wm/WindowContainer;->mNeedsAnimationBoundsLayer:Z

    .line 2338
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/WindowContainer;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2340
    .local v3, "a":Landroid/view/animation/Animation;
    if-eqz v3, :cond_a

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    move/from16 v22, v4

    goto :goto_3

    .line 2345
    :cond_7
    const/4 v4, 0x0

    move/from16 v22, v4

    :goto_3
    nop

    .line 2346
    .local v22, "windowCornerRadius":F
    new-instance v4, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v5, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v19

    const/16 v21, 0x1

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v20, v13

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2352
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    .line 2353
    .local v0, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    invoke-virtual {v3}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v5

    if-eq v5, v2, :cond_8

    .line 2354
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isClosingTransit(I)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    iput-boolean v1, v6, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 2355
    iput v14, v6, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 2356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v1

    iput v1, v6, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 2357
    .end local v4    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v22    # "windowCornerRadius":F
    goto :goto_4

    .line 2358
    .end local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :cond_a
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 2363
    .restart local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :goto_4
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_b

    .line 2364
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/android/server/wm/AnimationAdapter;

    .line 2365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v3

    move v10, v13

    move-object v1, v12

    .end local v12    # "screenBounds":Landroid/graphics/Rect;
    .local v1, "screenBounds":Landroid/graphics/Rect;
    move/from16 v12, p2

    move v2, v13

    .end local v13    # "appStackClipMode":I
    .local v2, "appStackClipMode":I
    move/from16 v13, p3

    invoke-static/range {v7 .. v13}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v4

    .line 2366
    .restart local v4    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    new-instance v5, Landroid/util/Pair;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/wm/AnimationAdapter;

    invoke-direct {v5, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 2363
    .end local v1    # "screenBounds":Landroid/graphics/Rect;
    .end local v2    # "appStackClipMode":I
    .end local v4    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .restart local v12    # "screenBounds":Landroid/graphics/Rect;
    .restart local v13    # "appStackClipMode":I
    :cond_b
    move-object v1, v12

    move v2, v13

    .line 2370
    .end local v3    # "a":Landroid/view/animation/Animation;
    .end local v12    # "screenBounds":Landroid/graphics/Rect;
    .end local v13    # "appStackClipMode":I
    .restart local v1    # "screenBounds":Landroid/graphics/Rect;
    .restart local v2    # "appStackClipMode":I
    :goto_5
    return-object v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appStackClipMode"    # I

    .line 2229
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 2726
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2727
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2728
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2729
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2730
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2731
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 2212
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationPosition(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "outPosition"    # Landroid/graphics/Point;

    .line 2234
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2235
    return-void
.end method

.method getAnimationSources()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 2197
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    return-object v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "animationLayer"    # I

    .line 2219
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2220
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    .line 2221
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 2223
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1605
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$TQFCJtak2E5nTjAEG9Q24yp-Oi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$TQFCJtak2E5nTjAEG9Q24yp-Oi8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getBottomMostTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1701
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$k_PpuHAHKhi1gqk1dQsXNnYX7Ok;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$k_PpuHAHKhi1gqk1dQsXNnYX7Ok;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 117
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 336
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 2761
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 2762
    const/4 v0, 0x0

    return-object v0

    .line 2764
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 2

    .line 830
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 831
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 824
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 2202
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getLastOrientationSource()Lcom/android/server/wm/WindowContainer;
    .locals 2

    .line 1294
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1295
    .local v0, "source":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 1296
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1297
    .local v1, "nextSource":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_0

    .line 1298
    return-object v1

    .line 1301
    .end local v1    # "nextSource":Lcom/android/server/wm/WindowContainer;
    :cond_0
    return-object v0
.end method

.method getLastSurfacePosition()Landroid/graphics/Point;
    .locals 1

    .line 2710
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method getOrientation()I
    .locals 1

    .line 1212
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .locals 14
    .param p1, "candidate"    # I

    .line 1227
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_0

    .line 1230
    return v2

    .line 1237
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    .line 1239
    iput-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1240
    return v1

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_9

    .line 1244
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1248
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;
    sget-boolean v6, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v6, :cond_2

    .line 1249
    if-eqz v5, :cond_2

    instance-of v6, v5, Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_2

    .line 1250
    move-object v6, v5

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inZoomWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1251
    goto :goto_2

    .line 1259
    :cond_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 1260
    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v2

    .line 1259
    :goto_1
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v7

    .line 1261
    .local v7, "orientation":I
    if-ne v7, v6, :cond_4

    .line 1265
    move p1, v7

    .line 1266
    iput-object v5, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1267
    goto :goto_2

    .line 1270
    :cond_4
    if-ne v7, v2, :cond_5

    .line 1271
    goto :goto_2

    .line 1274
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v8

    if-nez v8, :cond_7

    if-eq v7, v3, :cond_6

    goto :goto_3

    .line 1243
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "orientation":I
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1277
    .restart local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v7    # "orientation":I
    :cond_7
    :goto_3
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    int-to-long v8, v7

    .local v8, "protoLogParam1":J
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x42169418

    const/4 v12, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v6, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v4

    const/4 v4, 0x2

    aput-object v3, v6, v4

    invoke-static {v10, v11, v12, v0, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v8    # "protoLogParam1":J
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1281
    return v7

    .line 1285
    .end local v1    # "i":I
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "orientation":I
    :cond_9
    return p1
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 117
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 331
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    .line 1894
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1895
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    .line 1896
    const/4 v1, 0x0

    return-object v1

    .line 1898
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 2148
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2149
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2150
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    return-object v1

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v1
.end method

.method getPrefixOrderIndex()I
    .locals 1

    .line 644
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 2036
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const-wide v0, 0x10b00000002L

    return-wide v0
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 2736
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 2738
    return-void

    .line 2741
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2742
    .local v0, "dispBounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2744
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1

    .line 2745
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2746
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 2748
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 1

    .line 2778
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getRequestedConfigurationOrientation()I
    .locals 2

    .line 1154
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v0

    return v0

    .line 1159
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    .line 1162
    :cond_1
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    const/4 v0, 0x2

    return v0

    .line 1164
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    const/4 v0, 0x1

    return v0

    .line 1167
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 1918
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0

    .line 1921
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;
    .locals 1

    .line 2397
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 2128
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 2664
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 2659
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    return v0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 2139
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUsingBLASTSyncTransaction:Z

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0

    .line 2143
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 1709
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;
    .locals 7
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 1745
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 1713
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    if-eqz p2, :cond_2

    .line 1714
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1716
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    .line 1717
    return-object v1

    .line 1714
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 1721
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1722
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1723
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1724
    .local v2, "t":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3

    .line 1725
    return-object v2

    .line 1722
    .end local v2    # "t":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1730
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 2
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 1692
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$VgO_jyvTwx2IcoTcwvoIKxat95M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$VgO_jyvTwx2IcoTcwvoIKxat95M;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 1697
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "includeFinishing"    # Z
    .param p2, "includeOverlays"    # Z

    .line 1614
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p1, :cond_1

    .line 1615
    if-eqz p2, :cond_0

    .line 1616
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1618
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_1
    if-eqz p2, :cond_2

    .line 1620
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$-A4y17DMfFWJcsomzkr9vLbjQAE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$-A4y17DMfFWJcsomzkr9vLbjQAE;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1623
    :cond_2
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopChild()Lcom/android/server/wm/WindowContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getTopMostActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1609
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$hEnPtnCJ_pCrhm4O_2UvgVpB0HQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$hEnPtnCJ_pCrhm4O_2UvgVpB0HQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopMostTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1705
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$lJjjxJS1wJFikrxN0jFMgNna43g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$lJjjxJS1wJFikrxN0jFMgNna43g;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 1790
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1792
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 1793
    return-object v1

    .line 1790
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1797
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 4

    .line 1079
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1081
    .local v0, "stillDeferringRemoval":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1082
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1083
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasChild()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    const/4 v3, 0x0

    return v3

    .line 1081
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1094
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 2

    .line 1141
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1142
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasActivity()Z
    .locals 3

    .line 1491
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1492
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    return v1

    .line 1491
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1496
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 684
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 685
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 686
    .local v2, "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    if-eq v2, p1, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 684
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 687
    .restart local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1
    :goto_1
    return v1

    .line 690
    .end local v0    # "i":I
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method hasCommittedReparentToAnimationLeash()Z
    .locals 1

    .line 2109
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return v0
.end method

.method hasContentToDisplay()Z
    .locals 4

    .line 985
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 986
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 987
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    return v1

    .line 985
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 991
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final isAnimating()Z
    .locals 1

    .line 959
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    return v0
.end method

.method final isAnimating(I)Z
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 936
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method final isAnimating(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 912
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isAnimatingExcluding(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "typesToExclude"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    not-int v0, p2

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method isAppTransitioning()Z
    .locals 1

    .line 952
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$4sX6UUtugZXD_J917yuWIm58Q9M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$4sX6UUtugZXD_J917yuWIm58Q9M;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAttached()Z
    .locals 1

    .line 835
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isChangingAppTransition()Z
    .locals 1

    .line 966
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3
    .param p1, "ancestor"    # Lcom/android/server/wm/WindowContainer;

    .line 695
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 696
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 697
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isFocusable()Z
    .locals 2

    .line 1047
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1048
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isOnTop()Z
    .locals 2

    .line 1064
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1065
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isOrganized()Z
    .locals 1

    .line 2796
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isSelfAnimating(II)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 2624
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2625
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    and-int/2addr v0, p2

    if-lez v0, :cond_0

    .line 2626
    return v1

    .line 2628
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isWaitingForTransitionStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2629
    return v1

    .line 2631
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isVisible()Z
    .locals 4

    .line 1008
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1009
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1010
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    return v1

    .line 1008
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1014
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .locals 1

    .line 944
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$waitForAllWindowsDrawn$14$WindowContainer(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2754
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " drawn."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->requestDrawIfNeeded(Ljava/util/List;)V

    .line 2757
    return-void
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 2207
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1882
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1885
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1886
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1885
    return-object v1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 1873
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1874
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    return-object v1
.end method

.method mergeBlastSyncTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2899
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 2900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUsingBLASTSyncTransaction:Z

    .line 2901
    return-void
.end method

.method migrateToNewSurfaceControl()V
    .locals 5

    .line 461
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 462
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 470
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 474
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 476
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 482
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 483
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 484
    .local v3, "sc":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_2

    .line 485
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 482
    .end local v3    # "sc":Landroid/view/SurfaceControl;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 488
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 489
    return-void
.end method

.method needsZBoost()Z
    .locals 3

    .line 1986
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1987
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1988
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1989
    return v1

    .line 1987
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1992
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method okToAnimate()Z
    .locals 1

    .line 2503
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate(Z)Z

    move-result v0

    return v0
.end method

.method okToAnimate(Z)Z
    .locals 2
    .param p1, "ignoreFrozen"    # Z

    .line 2507
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2508
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->okToAnimate(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method okToDisplay()Z
    .locals 2

    .line 2498
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2499
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2556
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2557
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 2558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 2559
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 2530
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2531
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 2534
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 2535
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2539
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2540
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 2541
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 2542
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2543
    return-void
.end method

.method onAppTransitionDone()V
    .locals 2

    .line 1106
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1108
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 1106
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 0
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 764
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method onChildVisibilityRequested(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1024
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1029
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_1

    .line 1030
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->onChildVisibilityRequested(Z)V

    .line 1032
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 346
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 349
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 2
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1122
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1123
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    .line 1124
    const/4 v1, 0x0

    return v1

    .line 1126
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v1

    return v1
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    .line 797
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 800
    :cond_0
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 809
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 813
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 814
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 815
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 818
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 819
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 817
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 821
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method onMovedByResize()V
    .locals 2

    .line 865
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 867
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 865
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 869
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 406
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    .line 407
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V
    .locals 2
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p3, "callback"    # Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;

    .line 411
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 428
    :goto_0
    if-eqz p3, :cond_2

    .line 429
    invoke-interface {p3}, Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;->onPreAssignChildLayers()V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 435
    return-void
.end method

.method onParentResize()V
    .locals 1

    .line 856
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 862
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 775
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 776
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 777
    .local v0, "diff":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 782
    :cond_0
    if-nez v0, :cond_1

    .line 783
    return-void

    .line 786
    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 791
    :goto_0
    return-void
.end method

.method onResize()V
    .locals 2

    .line 846
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 848
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 846
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 850
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 496
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method public onTransactionReady(ILjava/util/Set;)V
    .locals 2
    .param p1, "mSyncId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2841
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "windowContainersReady":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    if-nez v0, :cond_0

    .line 2842
    return-void

    .line 2845
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2846
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mWaitingSyncId:I

    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(ILjava/util/Set;)V

    .line 2848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 2849
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingSyncId:I

    .line 2850
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 713
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_7

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 720
    const p1, 0x7fffffff

    goto :goto_0

    .line 721
    :cond_0
    if-gtz p1, :cond_1

    .line 722
    const/high16 p1, -0x80000000

    .line 725
    :cond_1
    :goto_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_4

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 756
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_1

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 729
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 732
    :cond_3
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 733
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_1

    .line 738
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_5

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 740
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 743
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 744
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 759
    :cond_6
    :goto_1
    return-void

    .line 714
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareForSync(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z
    .locals 3
    .param p1, "waitingListener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p2, "waitingId"    # I

    .line 2882
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setPendingListener(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z

    move-result v0

    .line 2883
    .local v0, "willSync":Z
    if-nez v0, :cond_0

    .line 2884
    const/4 v1, 0x0

    return v1

    .line 2887
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v1

    .line 2888
    .local v1, "localId":I
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->addChildrenToSyncSet(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2889
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 2891
    return v0
.end method

.method prepareSurfaces()V
    .locals 2

    .line 2098
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 2099
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2100
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2517
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2518
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    .line 2519
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2521
    :cond_0
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 583
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 585
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 592
    :cond_0
    return-void

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .locals 2

    .line 676
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 677
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 678
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 676
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 680
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeImmediately()V
    .locals 3

    .line 612
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 613
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 615
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 619
    .local v1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 623
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 626
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1
    goto :goto_0

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 630
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 631
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 632
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 635
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_4

    .line 636
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 638
    :cond_4
    return-void
.end method

.method reparent(Lcom/android/server/wm/WindowContainer;I)V
    .locals 4
    .param p1, "newParent"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I

    .line 352
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 357
    .local v0, "oldParent":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eq v1, p1, :cond_1

    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 364
    .local v1, "prevDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 366
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 367
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 368
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 369
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 372
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 373
    if-eq v1, v2, :cond_0

    .line 374
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 375
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 382
    return-void

    .line 358
    .end local v1    # "prevDc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v0    # "oldParent":Lcom/android/server/wm/WindowContainer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparent: can\'t reparent to null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 1957
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1958
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 2

    .line 872
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 874
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 872
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 876
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2524
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2525
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 2526
    return-void
.end method

.method scheduleAnimation()V
    .locals 1

    .line 2117
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 2118
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2120
    :cond_0
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 2

    .line 970
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 972
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 970
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 974
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method setFocusable(Z)Z
    .locals 1
    .param p1, "focusable"    # Z

    .line 1053
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-ne v0, p1, :cond_0

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 1057
    const/4 v0, 0x1

    return v0
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 442
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const-string v0, "WindowContainer.setInitialSurfaceControlProperties"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 444
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 446
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 1946
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1947
    return-void
.end method

.method setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1177
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1179
    return-void
.end method

.method setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p3, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1195
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 1196
    return-void

    .line 1199
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 1200
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1201
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1204
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1206
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 1208
    :cond_2
    return-void
.end method

.method protected final setParent(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 386
    .local v0, "oldParent":Lcom/android/server/wm/WindowContainer;
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 391
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq v2, v1, :cond_1

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 398
    :cond_2
    return-void
.end method

.method setPendingListener(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z
    .locals 1
    .param p1, "waitingListener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p2, "waitingId"    # I

    .line 2869
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2872
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUsingBLASTSyncTransaction:Z

    .line 2875
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mWaitingSyncId:I

    .line 2876
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 2877
    return v0

    .line 2870
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 1953
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1954
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 2774
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2775
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .locals 2

    .line 839
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 841
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 839
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 843
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method shouldMagnify()Z
    .locals 3

    .line 1905
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1906
    return v1

    .line 1909
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1910
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1911
    return v1

    .line 1909
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1914
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method showToCurrentUser()Z
    .locals 1

    .line 1324
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I

    .line 2183
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 2184
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 2171
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting animation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 2179
    return-void
.end method

.method startDelayingAnimationStart()V
    .locals 1

    .line 2647
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    .line 2648
    return-void
.end method

.method switchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1318
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 1318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1321
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "from"    # Lcom/android/server/wm/WindowContainer;

    .line 2187
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 2188
    return-void
.end method

.method final updateSurfacePosition()V
    .locals 1

    .line 2679
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2680
    return-void
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2684
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2686
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2690
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2694
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_2

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inZoomWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2696
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V

    .line 2697
    return-void

    .line 2700
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2701
    return-void

    .line 2704
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2705
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2706
    return-void

    .line 2687
    :cond_4
    :goto_0
    return-void
.end method

.method useBLASTSync()Z
    .locals 1

    .line 2895
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUsingBLASTSyncTransaction:Z

    return v0
.end method

.method waitForAllWindowsDrawn()V
    .locals 2

    .line 2751
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8;-><init>(Lcom/android/server/wm/WindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2758
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1035
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1036
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1037
    const-wide v2, 0x10500000002L

    const/16 v4, -0x2710

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1038
    const-wide v2, 0x10900000003L

    const-string v4, "WindowContainer"

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1039
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1040
    return-void
.end method
