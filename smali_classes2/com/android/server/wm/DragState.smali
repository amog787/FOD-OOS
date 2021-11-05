.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field mDragInProgress:Z

.field mDragResult:Z

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mInputSurface:Landroid/view/SurfaceControl;

.field private mIsClosing:Z

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/DragDropController;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "surface"    # Landroid/view/SurfaceControl;
    .param p5, "flags"    # I
    .param p6, "localWin"    # Landroid/os/IBinder;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 118
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 136
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 137
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 138
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 139
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 140
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 141
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DragState;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 7

    .line 653
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v4, v3, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 654
    const-string v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v6, v3, v6

    aput v6, v2, v5

    aput v3, v2, v4

    .line 656
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 658
    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 659
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 653
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 660
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 661
    .local v1, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 662
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 664
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 666
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 12

    .line 623
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 624
    const-string v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v3, v6

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v3, v6

    aput v3, v2, v4

    .line 627
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 630
    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v1, v4

    .line 631
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 623
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 634
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v1, v2

    .line 635
    .local v1, "translateX":F
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v2, v3

    .line 637
    .local v2, "translateY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 638
    .local v3, "travelDistance":D
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    .line 639
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 640
    .local v5, "displayDiagonal":D
    div-double v7, v3, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/16 v9, 0xc3

    add-long/2addr v7, v9

    .line 642
    .local v7, "duration":J
    new-instance v9, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 643
    .local v9, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;

    invoke-direct {v11, v0}, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 671
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 403
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 404
    return v0

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    return v0

    .line 409
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 412
    return v0

    .line 416
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 417
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 416
    :cond_5
    return v0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 446
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_0

    .line 447
    const/4 v0, 0x1

    return v0

    .line 449
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_0
    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 666
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 648
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 13
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p8, "result"    # Z

    .line 616
    move-object v0, p0

    move v1, p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v10

    .line 617
    .local v10, "winX":F
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v12

    .line 618
    .local v12, "winY":F
    move v2, p1

    move v3, v10

    move v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v2 .. v9}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 10
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .line 384
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 388
    .local v0, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 390
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    .line 396
    :goto_0
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2

    .line 395
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-start window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    .line 396
    goto :goto_0

    .line 395
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 398
    :cond_0
    throw v1

    .line 400
    .end local v0    # "event":Landroid/view/DragEvent;
    :cond_1
    :goto_2
    return-void
.end method

.method private showInputSurface()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 153
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 155
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 156
    const-string v1, "DragState.showInputSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 160
    .local v0, "h":Landroid/view/InputWindowHandle;
    if-nez v0, :cond_1

    .line 161
    const-string v1, "WindowManager"

    const-string v2, "Drag is in progress but there is no drag window handle."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 177
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 423
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .locals 4
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 350
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 351
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 359
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 361
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 362
    .local v1, "userManager":Landroid/os/UserManagerInternal;
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 365
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;-><init>(Lcom/android/server/wm/DragState;FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 372
    return-void
.end method

.method cancelDragLocked(Z)V
    .locals 1
    .param p1, "skipAnimation"    # Z

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 478
    return-void

    .line 474
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 475
    return-void
.end method

.method closeLocked()V
    .locals 18

    .line 184
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 186
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 187
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "unregistering drag input channel"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 193
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 197
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 198
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 200
    .local v5, "myPid":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "broadcasting DRAG_ENDED"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 204
    .local v7, "ws":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x0

    .line 205
    .local v0, "x":F
    const/4 v8, 0x0

    .line 206
    .local v8, "y":F
    iget-boolean v9, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_3

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    iget v10, v1, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v9, v10, :cond_3

    .line 208
    iget v0, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 209
    iget v8, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    move/from16 v17, v8

    move v8, v0

    goto :goto_1

    .line 211
    :cond_3
    move/from16 v17, v8

    move v8, v0

    .end local v0    # "x":F
    .local v8, "x":F
    .local v17, "y":F
    :goto_1
    const/4 v9, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v10, v8

    move/from16 v11, v17

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 214
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v5, v0, :cond_4

    .line 221
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 223
    .end local v7    # "ws":Lcom/android/server/wm/WindowState;
    .end local v8    # "x":F
    .end local v9    # "evt":Landroid/view/DragEvent;
    .end local v17    # "y":F
    :cond_4
    goto :goto_0

    .line 224
    :cond_5
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 229
    .end local v5    # "myPid":I
    :cond_6
    const/16 v0, 0x2002

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v7, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 231
    iput v2, v1, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 235
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    .line 236
    iget-object v5, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 237
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 239
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 240
    iget-object v5, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v0, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 241
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 243
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_a

    .line 244
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_a
    iput v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    .line 248
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 249
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 250
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 251
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 252
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 255
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 256
    return-void
.end method

.method endDragLocked()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 459
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 462
    return-void
.end method

.method getInputChannel()Landroid/view/InputChannel;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    :goto_0
    return-object v0
.end method

.method getInputWindowHandle()Landroid/view/InputWindowHandle;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_0
    return-object v0
.end method

.method isClosing()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return v0
.end method

.method isInProgress()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method public synthetic lambda$broadcastDragStartedLocked$0$DragState(FFLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 371
    return-void
.end method

.method notifyDropLocked(FF)V
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 545
    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    iput v11, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 549
    iput v12, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 551
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v13

    .line 553
    .local v13, "touchedWin":Lcom/android/server/wm/WindowState;
    invoke-direct {v1, v13}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_1

    .line 556
    iput-boolean v14, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 558
    return-void

    .line 561
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v15, "WindowManager"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending DROP to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 566
    .local v10, "targetUserId":I
    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_3

    .line 568
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, v1, Lcom/android/server/wm/DragState;->mUid:I

    .line 571
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v6, v2, 0xc3

    iget v7, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v0

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    move-object/from16 v16, v0

    .local v0, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_0

    .line 576
    .end local v0    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_3
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 578
    .local v16, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_0
    iget v0, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v0, v10, :cond_4

    .line 579
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_4

    .line 580
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->fixUris(I)V

    .line 583
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    .line 584
    .local v9, "myPid":I
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 585
    .local v8, "token":Landroid/os/IBinder;
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/16 v17, 0x0

    move-object v2, v13

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v14, v8

    .end local v8    # "token":Landroid/os/IBinder;
    .local v14, "token":Landroid/os/IBinder;
    move-object v8, v0

    move/from16 v18, v9

    .end local v9    # "myPid":I
    .local v18, "myPid":I
    move-object/from16 v9, v16

    move/from16 v19, v10

    .end local v10    # "targetUserId":I
    .local v19, "targetUserId":I
    move/from16 v10, v17

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 588
    .local v2, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 591
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v3, v18

    .end local v18    # "myPid":I
    .local v3, "myPid":I
    if-eq v3, v0, :cond_5

    .line 597
    :goto_1
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2

    .line 596
    .end local v3    # "myPid":I
    .restart local v18    # "myPid":I
    :catchall_0
    move-exception v0

    move/from16 v3, v18

    .end local v18    # "myPid":I
    .restart local v3    # "myPid":I
    goto :goto_3

    .line 592
    .end local v3    # "myPid":I
    .restart local v18    # "myPid":I
    :catch_0
    move-exception v0

    move/from16 v3, v18

    .line 593
    .end local v18    # "myPid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "myPid":I
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t send drop notification to win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v0, :cond_5

    .line 597
    goto :goto_1

    .line 600
    :cond_5
    :goto_2
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 601
    return-void

    .line 596
    :catchall_1
    move-exception v0

    :goto_3
    iget-object v4, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v4, :cond_6

    .line 597
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 599
    :cond_6
    throw v0
.end method

.method notifyLocationLocked(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 500
    move-object/from16 v1, p0

    const-string v2, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 501
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_0

    .line 508
    :cond_0
    move-object v14, v0

    .end local v0    # "touchedWin":Lcom/android/server/wm/WindowState;
    .local v14, "touchedWin":Lcom/android/server/wm/WindowState;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 511
    .local v0, "myPid":I
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v14, v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2

    .line 512
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_1

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending DRAG_EXITED to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    iget-object v15, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v3

    .line 518
    .local v3, "evt":Landroid/view/DragEvent;
    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 519
    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_2

    .line 520
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 523
    .end local v3    # "evt":Landroid/view/DragEvent;
    :cond_2
    if-eqz v14, :cond_3

    .line 527
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v14

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v11}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v3

    .line 529
    .restart local v3    # "evt":Landroid/view/DragEvent;
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 530
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_3

    .line 531
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "myPid":I
    .end local v3    # "evt":Landroid/view/DragEvent;
    :cond_3
    goto :goto_1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    .line 538
    return-void
.end method

.method notifyMoveLocked(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 485
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 488
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 492
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    float-to-int v1, v1

    int-to-long v1, v1

    .local v1, "protoLogParam1":J
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v3, p2, v3

    float-to-int v3, v3

    int-to-long v3, v3

    .local v3, "protoLogParam2":J
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x14698a26

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 495
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    .end local v3    # "protoLogParam2":J
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V

    .line 496
    return-void
.end method

.method overridePointerIconLocked(I)V
    .locals 2
    .param p1, "touchSource"    # I

    .line 675
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 676
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 679
    :cond_0
    return-void
.end method

.method register(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 338
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "Duplicate register of drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 343
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->showInputSurface()V

    .line 345
    :goto_0
    return-void
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 432
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to send DRAG_STARTED to new window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 442
    :cond_2
    return-void
.end method
