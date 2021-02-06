.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final PRESERVED_SURFACE_LAYER:I = 0x1

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field mAnimationIsEntrance:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAttrType:I

.field final mContext:Landroid/content/Context;

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastClipRect:Landroid/graphics/Rect;

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastDtDx:F

.field private mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field private mOffsetPositionForStackResize:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field mPipAnimationStarted:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field private mTmpAnimatingBounds:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpSize:Landroid/graphics/Rect;

.field private mTmpSourceBounds:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field mWallpaperScale:F

.field final mWin:Lcom/android/server/wm/WindowState;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 151
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 152
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 167
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 168
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 225
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 226
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 232
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 236
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperScale:F

    .line 244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 254
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 260
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 262
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    .line 265
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 267
    .local v0, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 268
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 269
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 270
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 271
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 273
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 274
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 275
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 276
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 277
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 278
    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    .line 883
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCrop: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    if-eqz p1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    .line 893
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 830
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 831
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 833
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 834
    return v2

    .line 837
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-nez v3, :cond_8

    .line 838
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 845
    :cond_1
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v3, :cond_2

    .line 846
    return v2

    .line 851
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_3

    .line 852
    return v2

    .line 855
    :cond_3
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating crop win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mLastCrop="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    .line 860
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying decor to crop win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDecorFrame="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDecorFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSystemDecorRect="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 866
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    const-string v4, "win="

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Initial clip rect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    .line 872
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 874
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Clip rect after stack adjustment="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 879
    const/4 v2, 0x1

    return v2

    .line 839
    :cond_8
    :goto_0
    return v2
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "outSize"    # Landroid/graphics/Rect;

    .line 579
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 580
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    .line 582
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 583
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 590
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 591
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 592
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->getCompatFrameSize(Landroid/graphics/Rect;)V

    .line 600
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 601
    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 603
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 604
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 608
    :cond_3
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 610
    return-void
.end method

.method private markPreservedSurfaceForDestroy()V
    .locals 2

    .line 444
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_0
    return-void
.end method

.method private setWallpaperPositionAndScale(IIFZ)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scale"    # F
    .param p4, "recoveringMemory"    # Z

    .line 1329
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1330
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1331
    .local v1, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1332
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, p3, p3, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1334
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1335
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1337
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4, p4}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1339
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v6, v2, v3

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v7, v2, v3

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v8, v2, v3

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v9, v2, v3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    .line 1345
    const/4 v2, 0x0

    invoke-direct {p0, v2, p4}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1346
    return-void
.end method

.method private shouldConsumeMainWindowSizeTransaction()Z
    .locals 4

    .line 901
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 903
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 905
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_2

    return v1

    .line 906
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 908
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 909
    :cond_4
    return v2
.end method

.method private showSurfaceRobustlyLocked()Z
    .locals 6

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .line 1404
    .local v0, "shown":Z
    if-nez v0, :cond_1

    .line 1405
    const/4 v1, 0x0

    return v1

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v3, :cond_2

    .line 1410
    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1411
    .local v2, "pendingSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1414
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mChildrenDetached:Z

    if-nez v3, :cond_2

    .line 1415
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 1416
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, v5, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1415
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1421
    .end local v2    # "pendingSurfaceControl":Landroid/view/SurfaceControl;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1422
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 11
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v0, p2, :cond_0

    .line 1465
    return v1

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1469
    .local v0, "isImeWindow":Z
    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 1470
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1471
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1472
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1479
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_e

    .line 1482
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1483
    return v1

    .line 1486
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5, p1}, Lcom/android/server/wm/DisplayPolicy;->selectAnimation(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    .line 1487
    .local v2, "anim":I
    const/4 v5, -0x1

    .line 1488
    .local v5, "attr":I
    const/4 v6, 0x0

    .line 1489
    .local v6, "a":Landroid/view/animation/Animation;
    const/4 v7, 0x3

    const-wide/16 v8, 0x20

    if-eqz v2, :cond_4

    .line 1490
    const/4 v1, -0x1

    if-eq v2, v1, :cond_a

    .line 1491
    const-string v1, "WSA#loadAnimation"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1493
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 1498
    :cond_4
    if-eqz p2, :cond_5

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v10}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkAppWindowAnimating(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1499
    return v1

    .line 1502
    :cond_5
    if-eq p1, v1, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v7, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    goto :goto_1

    .line 1513
    :cond_6
    const/4 v5, 0x3

    goto :goto_1

    .line 1510
    :cond_7
    const/4 v5, 0x2

    .line 1511
    goto :goto_1

    .line 1507
    :cond_8
    const/4 v5, 0x1

    .line 1508
    goto :goto_1

    .line 1504
    :cond_9
    const/4 v5, 0x0

    .line 1505
    nop

    .line 1516
    :goto_1
    if-ltz v5, :cond_a

    .line 1517
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v10, v5, v3}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1524
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mIsQuickReplyImeWindow:Z

    const-string v3, "WindowManager"

    if-eqz v1, :cond_b

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: applyAnimation: set null for "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_b
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyAnimation: win="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " anim="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " attr=0x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " a="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " transit="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " type="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isEntrance="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " Callers "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_c
    if-eqz v6, :cond_f

    .line 1539
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded animation "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_d
    const-string v1, "WSA#startAnimation"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1543
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    goto :goto_3

    .line 1545
    .end local v2    # "anim":I
    .end local v5    # "attr":I
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_e
    if-nez v0, :cond_f

    .line 1546
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    goto :goto_4

    .line 1545
    :cond_f
    :goto_3
    nop

    .line 1549
    :goto_4
    if-nez p2, :cond_10

    if-eqz v0, :cond_10

    .line 1550
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1553
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v1

    return v1
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    .line 1429
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_0

    .line 1430
    return-void

    .line 1434
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v0, :cond_1

    .line 1435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1436
    const/4 v0, 0x1

    .local v0, "transit":I
    goto :goto_0

    .line 1438
    .end local v0    # "transit":I
    :cond_1
    const/4 v0, 0x3

    .line 1443
    .restart local v0    # "transit":I
    :goto_0
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1444
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1447
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_3

    .line 1448
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1450
    :cond_3
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 4

    .line 365
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cur mDrawState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 371
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 379
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_4

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v0

    .line 383
    :cond_4
    return v0
.end method

.method computeShownFrameLocked()V
    .locals 15

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 728
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v0

    .line 729
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 731
    .local v1, "windowParticipatesInScreenRotationAnimation":Z
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 732
    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 735
    .local v4, "screenAnimation":Z
    :goto_0
    const-string v5, "WindowManager"

    if-eqz v4, :cond_9

    .line 737
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 738
    .local v6, "frame":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 739
    .local v7, "tmpFloats":[F
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 742
    .local v8, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->isRotating()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 750
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    .line 751
    .local v9, "w":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    .line 752
    .local v10, "h":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v11

    if-ltz v12, :cond_1

    cmpl-float v12, v10, v11

    if-ltz v12, :cond_1

    .line 753
    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v12, v9

    add-float/2addr v13, v11

    div-float v14, v12, v10

    add-float/2addr v14, v11

    div-float v11, v9, v12

    div-float v12, v10, v12

    invoke-virtual {v8, v13, v14, v11, v12}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    .line 755
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 757
    .end local v9    # "w":F
    .end local v10    # "h":F
    :goto_1
    goto :goto_2

    .line 758
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 761
    :goto_2
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v9, v9, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v10, v10, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 765
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 775
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 776
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 777
    aget v3, v7, v3

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 778
    const/4 v3, 0x3

    aget v3, v7, v3

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 779
    aget v2, v7, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 780
    const/4 v2, 0x4

    aget v2, v7, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 787
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 788
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 789
    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 790
    invoke-virtual {v2, v3, v9, v10, v11}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 791
    :cond_3
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 794
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v2, :cond_8

    :cond_5
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v9, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_6

    float-to-double v2, v2

    const-wide/16 v9, 0x0

    cmpl-double v2, v2, v9

    if-nez v2, :cond_8

    .line 795
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeShownFrameLocked: Animating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mAlpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    if-eqz v4, :cond_7

    .line 797
    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_7
    const-string v3, "null"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_8
    return-void

    .line 800
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v7    # "tmpFloats":[F
    .end local v8    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v2, :cond_a

    .line 801
    return-void

    .line 802
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 808
    return-void

    .line 811
    :cond_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeShownFrameLocked: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " not attached, mAlpha="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_c
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 817
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 818
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 819
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 820
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 821
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 822
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .locals 27
    .param p1, "windowType"    # I
    .param p2, "ownerUid"    # I

    .line 463
    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 465
    .local v11, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 466
    return-object v0

    .line 469
    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 470
    const v0, 0x6bd83

    move v12, v0

    .end local p1    # "windowType":I
    .local v0, "windowType":I
    goto :goto_0

    .line 469
    .end local v0    # "windowType":I
    .restart local p1    # "windowType":I
    :cond_1
    move/from16 v12, p1

    .line 473
    .end local p1    # "windowType":I
    .local v12, "windowType":I
    :goto_0
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 475
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v14, "WindowManager"

    if-eqz v0, :cond_2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 481
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 483
    const/4 v0, 0x4

    .line 484
    .local v0, "flags":I
    iget-object v15, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 486
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    or-int/lit16 v0, v0, 0x80

    move v1, v0

    goto :goto_1

    .line 486
    :cond_3
    move v1, v0

    .line 490
    .end local v0    # "flags":I
    .local v1, "flags":I
    :goto_1
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v10, v11, v15, v0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 491
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 492
    .local v9, "width":I
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 494
    .local v8, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v7, " format="

    if-eqz v0, :cond_4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating surface in session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_4
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 507
    iget v0, v11, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v2, "createSurfaceLocked"

    invoke-static {v0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 513
    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x1000000

    and-int v0, v0, v16

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    move v0, v13

    .line 514
    .local v0, "isHwAccelerated":Z
    :goto_2
    if-eqz v0, :cond_6

    const/4 v2, -0x3

    goto :goto_3

    :cond_6
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_3
    move v4, v2

    .line 515
    .local v4, "format":I
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    if-nez v2, :cond_7

    :try_start_1
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_7

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_7

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_7

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_7

    .line 524
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_7

    .line 525
    or-int/lit16 v1, v1, 0x400

    move v3, v1

    goto :goto_4

    .line 547
    .end local v0    # "isHwAccelerated":Z
    .end local v4    # "format":I
    :catch_0
    move-exception v0

    move-object v3, v6

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    goto/16 :goto_b

    .line 542
    :catch_1
    move-exception v0

    move-object v3, v6

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    goto/16 :goto_c

    .line 528
    .restart local v0    # "isHwAccelerated":Z
    .restart local v4    # "format":I
    :cond_7
    move v3, v1

    .end local v1    # "flags":I
    .local v3, "flags":I
    :goto_4
    :try_start_2
    new-instance v2, Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-object v1, v2

    move-object v13, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    .end local v3    # "flags":I
    .local v17, "flags":I
    move v3, v9

    move/from16 v18, v4

    .end local v4    # "format":I
    .local v18, "format":I
    move v4, v8

    move-object/from16 v19, v14

    move v14, v5

    move/from16 v5, v18

    move/from16 v6, v17

    move-object/from16 v21, v7

    move-object/from16 v7, p0

    move/from16 v22, v8

    .end local v8    # "height":I
    .local v22, "height":I
    move v8, v12

    move/from16 v23, v9

    .end local v9    # "width":I
    .local v23, "width":I
    move/from16 v9, p2

    :try_start_3
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v13, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 530
    iget v1, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v1, v1, v16

    if-eqz v1, :cond_8

    move v5, v14

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 533
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 534
    move/from16 v1, v18

    .end local v18    # "format":I
    .local v1, "format":I
    iput v1, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    .line 536
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 538
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v2, :cond_9

    :try_start_4
    iget-object v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    int-to-long v4, v4

    .local v4, "protoLogParam2":J
    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    int-to-long v6, v6

    move-object v9, v15

    move/from16 v8, v17

    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .local v6, "protoLogParam3":J
    .local v8, "flags":I
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    int-to-long v14, v8

    .local v14, "protoLogParam4":J
    :try_start_5
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam5":Ljava/lang/String;
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    move/from16 v18, v0

    .end local v0    # "isHwAccelerated":Z
    .local v18, "isHwAccelerated":Z
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v2, v0, v25

    const/16 v17, 0x1

    aput-object v3, v0, v17

    const/16 v25, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v0, v25

    const/16 v25, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v0, v25

    const/16 v25, 0x4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v0, v25

    const/16 v25, 0x5

    aput-object v16, v0, v25
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v25, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    const v1, 0x2c6dc63d

    const/16 v2, 0x150

    const/4 v3, 0x0

    .end local v1    # "format":I
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .local v20, "protoLogParam0":Ljava/lang/String;
    .local v24, "protoLogParam1":Ljava/lang/String;
    .local v25, "format":I
    :try_start_6
    invoke-static {v13, v1, v2, v3, v0}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    .line 547
    .end local v4    # "protoLogParam2":J
    .end local v6    # "protoLogParam3":J
    .end local v14    # "protoLogParam4":J
    .end local v16    # "protoLogParam5":Ljava/lang/String;
    .end local v18    # "isHwAccelerated":Z
    .end local v20    # "protoLogParam0":Ljava/lang/String;
    .end local v24    # "protoLogParam1":Ljava/lang/String;
    .end local v25    # "format":I
    :catch_2
    move-exception v0

    goto :goto_6

    .line 542
    :catch_3
    move-exception v0

    goto :goto_7

    .line 547
    :catch_4
    move-exception v0

    const/4 v3, 0x0

    :goto_6
    move v1, v8

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    goto/16 :goto_b

    .line 542
    :catch_5
    move-exception v0

    const/4 v3, 0x0

    :goto_7
    move v1, v8

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    goto/16 :goto_c

    .line 547
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "flags":I
    :catch_6
    move-exception v0

    move-object v9, v15

    move/from16 v8, v17

    const/4 v3, 0x0

    move v1, v8

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_b

    .line 542
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "flags":I
    :catch_7
    move-exception v0

    move-object v9, v15

    move/from16 v8, v17

    const/4 v3, 0x0

    move v1, v8

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_c

    .line 538
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v0    # "isHwAccelerated":Z
    .restart local v1    # "format":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "flags":I
    :cond_9
    move/from16 v18, v0

    move/from16 v25, v1

    move-object v9, v15

    move/from16 v8, v17

    .line 551
    .end local v0    # "isHwAccelerated":Z
    .end local v1    # "format":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    nop

    .line 553
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", set left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    move-object/from16 v2, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 553
    :cond_a
    move-object/from16 v2, v19

    .line 558
    :goto_9
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_b

    .line 559
    const-string v0, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v23

    .end local v23    # "width":I
    .local v4, "width":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v22

    .end local v22    # "height":I
    .local v5, "height":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    const/4 v1, 0x0

    invoke-static {v11, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_a

    .line 558
    .end local v4    # "width":I
    .end local v5    # "height":I
    .restart local v22    # "height":I
    .restart local v23    # "width":I
    :cond_b
    move/from16 v5, v22

    move/from16 v4, v23

    .line 567
    .end local v22    # "height":I
    .end local v23    # "width":I
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    :goto_a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_c

    .line 568
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 572
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 574
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_d
    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 547
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "flags":I
    .restart local v22    # "height":I
    .restart local v23    # "width":I
    :catch_8
    move-exception v0

    move-object v9, v15

    move/from16 v8, v17

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    const/4 v3, 0x0

    move v1, v8

    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .end local v22    # "height":I
    .end local v23    # "width":I
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_b

    .line 542
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "flags":I
    .restart local v22    # "height":I
    .restart local v23    # "width":I
    :catch_9
    move-exception v0

    move-object v9, v15

    move/from16 v8, v17

    move-object/from16 v2, v19

    move/from16 v5, v22

    move/from16 v4, v23

    const/4 v3, 0x0

    move v1, v8

    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "flags":I
    .end local v22    # "height":I
    .end local v23    # "width":I
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 547
    .end local v4    # "width":I
    .end local v5    # "height":I
    .local v3, "flags":I
    .local v8, "height":I
    .local v9, "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_a
    move-exception v0

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    move v8, v3

    move-object v3, v6

    move v1, v8

    .end local v3    # "flags":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .local v8, "flags":I
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_b

    .line 542
    .end local v4    # "width":I
    .end local v5    # "height":I
    .restart local v3    # "flags":I
    .local v8, "height":I
    .local v9, "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_b
    move-exception v0

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    move v8, v3

    move-object v3, v6

    move v1, v8

    .end local v3    # "flags":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .local v8, "flags":I
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 547
    .end local v4    # "width":I
    .end local v5    # "height":I
    .local v1, "flags":I
    .local v8, "height":I
    .local v9, "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_c
    move-exception v0

    move-object v3, v6

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    .line 548
    .end local v8    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    const-string v6, "Exception creating surface (parent dead?)"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 550
    return-object v3

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .restart local v8    # "height":I
    .local v9, "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_d
    move-exception v0

    move-object v3, v6

    move v5, v8

    move v4, v9

    move-object v2, v14

    move-object v9, v15

    .line 543
    .end local v8    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_c
    const-string v6, "OutOfResourcesException creating surface"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v6, "create"

    const/4 v7, 0x1

    invoke-virtual {v2, v10, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 545
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 546
    return-object v3
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 8

    .line 692
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2

    .line 695
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "SURFACE DESTROY PENDING"

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_0

    .line 698
    :cond_0
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x1c75cab3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object v4, v7, v3

    invoke-static {v5, v6, v1, v0, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 703
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 706
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v2, :cond_2

    .line 707
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_2
    goto :goto_1

    .line 710
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown when destroying Window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 716
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 717
    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_0

    .line 422
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mChildrenDetached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 433
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 435
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 439
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 441
    return-void
.end method

.method destroySurface()V
    .locals 6

    .line 1632
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    .line 1633
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    :cond_0
    nop

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1640
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1641
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1642
    goto :goto_1

    .line 1639
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1635
    :catch_0
    move-exception v2

    .line 1636
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1639
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1643
    :goto_1
    return-void

    .line 1639
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1640
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1641
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1642
    throw v2
.end method

.method destroySurfaceLocked()V
    .locals 10

    .line 617
    const-string v0, "WindowManager"

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 618
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 619
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_0

    .line 620
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_1

    .line 625
    return-void

    .line 632
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 633
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 637
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " destroying surface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_7

    .line 640
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v5, v7, :cond_a

    .line 641
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_6

    .line 644
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_4

    .line 645
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v6, "SURFACE DESTROY PENDING"

    invoke-static {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_0

    .line 647
    :cond_4
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x1c75cab3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v7, v6, v4

    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 654
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_2

    .line 659
    :cond_7
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_8

    .line 660
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v6, "SURFACE DESTROY"

    invoke-static {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_1

    .line 662
    :cond_8
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x52f7643c

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v7, v6, v4

    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 667
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 671
    :cond_a
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v4, :cond_b

    .line 672
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_b
    goto :goto_3

    .line 674
    :catch_0
    move-exception v4

    .line 675
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown when destroying Window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " surface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_c

    .line 684
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 686
    :cond_c
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 687
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 688
    return-void
.end method

.method detachChildren()V
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1662
    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1

    .line 1665
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    .line 1676
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_2

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 1680
    :cond_2
    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 2

    .line 202
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    const-string v0, "HAS_DRAWN"

    return-object v0

    .line 206
    :cond_1
    const-string v0, "READY_TO_SHOW"

    return-object v0

    .line 205
    :cond_2
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 204
    :cond_3
    const-string v0, "DRAW_PENDING"

    return-object v0

    .line 203
    :cond_4
    const-string v0, "NO_SURFACE"

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1

    .line 1572
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1574
    :cond_1
    if-eqz p3, :cond_3

    .line 1575
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnterAnimationPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1579
    const-string v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1581
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1582
    const-string v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1584
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_4

    .line 1588
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1591
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_6

    .line 1592
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1593
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1595
    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 1596
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1597
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1598
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1600
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 1601
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1602
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1603
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1604
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1605
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1607
    :cond_a
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1557
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1558
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1559
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    .line 1560
    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1562
    :cond_0
    const-wide v2, 0x10e00000003L

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1563
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1564
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1565
    return-void
.end method

.method finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 11
    .param p1, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 334
    .local v0, "startingWindow":Z
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 335
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x14887ae1

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v6, v9, v1

    invoke-static {v7, v8, v2, v4, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 341
    .local v5, "layoutNeeded":Z
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v6, v1, :cond_4

    .line 342
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_DRAW_enabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x3b35bfb1

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v2

    aput-object v7, v10, v1

    invoke-static {v8, v9, v2, v4, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 346
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x31702c29

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    invoke-static {v7, v8, v2, v4, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_3
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 349
    const/4 v5, 0x1

    .line 351
    if-eqz p1, :cond_5

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 354
    :cond_4
    if-eqz p1, :cond_5

    .line 357
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 360
    :cond_5
    :goto_1
    return v5
.end method

.method getClientViewRootSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    const/4 v0, 0x0

    return-object v0

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1158
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1159
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1162
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1164
    :goto_0
    return-void
.end method

.method getShown()Z
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 1627
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 1
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"    # Ljava/lang/String;

    .line 311
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 318
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 329
    return-void
.end method

.method isForceScaled()Z
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1651
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    const/4 v1, 0x1

    return v1

    .line 1654
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method onAnimationFinished()V
    .locals 4

    .line 282
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation done in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": exiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 289
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7f8

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 290
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 296
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 297
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 300
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_5

    .line 301
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "WindowStateAnimator"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 305
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 308
    :cond_6
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .locals 34
    .param p1, "recoveringMemory"    # Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1168
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    const v3, 0x68abb2c2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v7, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1176
    :cond_1
    return-void

    .line 1179
    :cond_2
    const/4 v2, 0x0

    .line 1181
    .local v2, "displayed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1183
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1185
    iget-boolean v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const-string v8, "prepareSurfaceLocked"

    if-eqz v7, :cond_3

    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v7, :cond_3

    .line 1187
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    move/from16 v13, p1

    goto/16 :goto_5

    .line 1188
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v7

    if-nez v7, :cond_4

    move/from16 v13, p1

    goto/16 :goto_4

    .line 1201
    :cond_4
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v7

    const/4 v7, 0x3

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v8, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 1267
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareSurface: No changes in animation for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "WindowManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_6
    const/4 v2, 0x1

    move/from16 v13, p1

    goto/16 :goto_5

    .line 1209
    :cond_7
    :goto_0
    const/4 v2, 0x1

    .line 1210
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1211
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1212
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1213
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1214
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1215
    iget v3, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1216
    iget v3, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1217
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v10, v10

    .local v10, "protoLogParam1":D
    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    float-to-double v12, v12

    .local v12, "protoLogParam2":D
    iget v14, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    float-to-double v14, v14

    .local v14, "protoLogParam3":D
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    float-to-double v8, v4

    .local v8, "protoLogParam4":D
    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move-wide/from16 v19, v8

    .end local v8    # "protoLogParam4":D
    .local v19, "protoLogParam4":D
    float-to-double v7, v4

    .local v7, "protoLogParam5":D
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    float-to-double v5, v4

    .local v5, "protoLogParam6":D
    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    move-wide/from16 v22, v10

    .end local v10    # "protoLogParam1":D
    .local v22, "protoLogParam1":D
    float-to-double v9, v4

    .local v9, "protoLogParam7":D
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-wide/from16 v24, v12

    .end local v12    # "protoLogParam2":D
    .local v24, "protoLogParam2":D
    float-to-double v11, v4

    .local v11, "protoLogParam8":D
    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move-wide/from16 v26, v14

    .end local v14    # "protoLogParam3":D
    .local v26, "protoLogParam3":D
    float-to-double v13, v4

    .local v13, "protoLogParam9":D
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam10":Ljava/lang/String;
    sget-object v15, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    move/from16 v29, v2

    .end local v2    # "displayed":Z
    .local v29, "displayed":Z
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v3, v2, v28

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    const/16 v21, 0x1

    aput-object v32, v2, v21

    const/16 v32, 0x2

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    aput-object v33, v2, v32

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    const/16 v18, 0x3

    aput-object v32, v2, v18

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/16 v17, 0x4

    aput-object v18, v2, v17

    const/16 v18, 0x5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v2, v18

    const/16 v18, 0x6

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v2, v18

    const/16 v18, 0x7

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v2, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/16 v16, 0x8

    aput-object v18, v2, v16

    const/16 v18, 0x9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v2, v18

    const/16 v18, 0xa

    aput-object v4, v2, v18

    move-object/from16 v18, v3

    move-object/from16 v30, v4

    move-wide/from16 v31, v5

    const v3, 0x682f7873

    const v4, 0xaaaa8

    const/4 v5, 0x0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam10":Ljava/lang/String;
    .end local v5    # "protoLogParam6":D
    .local v18, "protoLogParam0":Ljava/lang/String;
    .local v30, "protoLogParam10":Ljava/lang/String;
    .local v31, "protoLogParam6":D
    invoke-static {v15, v3, v4, v5, v2}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v7    # "protoLogParam5":D
    .end local v9    # "protoLogParam7":D
    .end local v11    # "protoLogParam8":D
    .end local v13    # "protoLogParam9":D
    .end local v18    # "protoLogParam0":Ljava/lang/String;
    .end local v19    # "protoLogParam4":D
    .end local v22    # "protoLogParam1":D
    .end local v24    # "protoLogParam2":D
    .end local v26    # "protoLogParam3":D
    .end local v29    # "displayed":Z
    .end local v30    # "protoLogParam10":Ljava/lang/String;
    .end local v31    # "protoLogParam6":D
    .restart local v2    # "displayed":Z
    :cond_8
    move/from16 v29, v2

    .line 1222
    .end local v2    # "displayed":Z
    .restart local v29    # "displayed":Z
    :goto_1
    const/4 v2, 0x1

    .line 1224
    .local v2, "prepared":Z
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_9

    .line 1225
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperScale:F

    move/from16 v13, p1

    invoke-direct {v0, v3, v4, v5, v13}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperPositionAndScale(IIFZ)V

    goto :goto_2

    .line 1228
    :cond_9
    move/from16 v13, p1

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v8, v3, v4

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v9, v3, v4

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v10, v3, v4

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v11, v3, v4

    .line 1229
    move/from16 v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v2

    .line 1237
    :goto_2
    if-eqz v2, :cond_d

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 1238
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_d

    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1241
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1242
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1243
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_a

    .line 1244
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 1246
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1247
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1251
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1252
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_b

    .line 1253
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSurfaceRobustlyLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1258
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_b
    goto :goto_3

    .line 1259
    :cond_c
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1263
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1264
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1266
    .end local v2    # "prepared":Z
    :cond_e
    move/from16 v2, v29

    goto :goto_5

    .line 1188
    .end local v29    # "displayed":Z
    .local v2, "displayed":Z
    :cond_f
    move/from16 v13, p1

    .line 1189
    :goto_4
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1190
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1197
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1198
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v4

    const/4 v7, 0x0

    invoke-static {v6, v3, v4, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_10
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1274
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1275
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1276
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1277
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x43680740

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v8, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    goto :goto_6

    .line 1280
    :cond_11
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1281
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x369bfa1e

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1285
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_12
    :goto_6
    if-eqz v2, :cond_13

    .line 1286
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1288
    :cond_13
    return-void
.end method

.method preserveSurfaceLocked()V
    .locals 7

    .line 387
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 395
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 401
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 400
    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 405
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 406
    return-void

    .line 408
    :cond_1
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x443486b4

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 409
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 415
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 418
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1621
    return-void
.end method

.method resetDrawState()V
    .locals 2

    .line 451
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_0

    .line 454
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 460
    :cond_1
    return-void
.end method

.method setColorSpaceAgnosticLocked(Z)V
    .locals 1
    .param p1, "agnostic"    # Z

    .line 1384
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1385
    return-void

    .line 1387
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 1388
    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .locals 0
    .param p1, "offsetPositionForStackResize"    # Z

    .line 1683
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    .line 1684
    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1371
    return-void

    .line 1373
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1374
    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 1377
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1378
    return-void

    .line 1380
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1381
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 28
    .param p1, "recoveringMemory"    # Z

    .line 913
    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    .line 914
    return-void

    .line 917
    :cond_0
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 918
    .local v8, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 919
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 921
    .local v10, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 923
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 924
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 926
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 935
    .local v11, "wasForceScaled":Z
    iget-boolean v2, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v8, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v13, v2

    .line 936
    .local v13, "relayout":Z
    if-eqz v13, :cond_3

    .line 937
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 938
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 937
    invoke-virtual {v2, v4, v5, v7}, Lcom/android/server/wm/WindowSurfaceController;->setBufferSizeInTransaction(IIZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_2

    .line 940
    :cond_3
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 942
    :goto_2
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 947
    const/4 v2, 0x0

    .line 948
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 949
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 952
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->shouldConsumeMainWindowSizeTransaction()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 953
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 954
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v14

    .line 953
    invoke-virtual {v4, v5, v14, v15}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/SurfaceControl;J)V

    .line 955
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 956
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v14

    .line 955
    invoke-virtual {v4, v5, v14, v15}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/view/SurfaceControl;J)V

    .line 957
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-static {v4}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 958
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 961
    :cond_6
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v4

    int-to-float v14, v4

    .line 962
    .local v14, "surfaceWidth":F
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v4

    int-to-float v15, v4

    .line 964
    .local v15, "surfaceHeight":F
    iget-object v6, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 966
    .local v6, "insets":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 967
    iget v4, v6, Landroid/graphics/Rect;->left:I

    iget v5, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 968
    .local v4, "hInsets":I
    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    .line 969
    .local v5, "vInsets":I
    int-to-float v3, v4

    sub-float v3, v14, v3

    .line 970
    .local v3, "surfaceContentWidth":F
    int-to-float v1, v5

    sub-float v1, v15, v1

    .line 971
    .local v1, "surfaceContentHeight":F
    iget-boolean v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v12, :cond_7

    .line 972
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "hInsets":I
    .local v16, "hInsets":I
    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto :goto_4

    .line 971
    .end local v16    # "hInsets":I
    .restart local v4    # "hInsets":I
    :cond_7
    move/from16 v16, v4

    .line 975
    .end local v4    # "hInsets":I
    .restart local v16    # "hInsets":I
    :goto_4
    const/4 v4, 0x0

    .line 976
    .local v4, "posX":I
    const/4 v12, 0x0

    .line 977
    .local v12, "posY":I
    move/from16 v17, v5

    .end local v5    # "vInsets":I
    .local v17, "vInsets":I
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    move/from16 v18, v11

    .end local v11    # "wasForceScaled":Z
    .local v18, "wasForceScaled":Z
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/ActivityStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 979
    const/4 v5, 0x0

    .line 980
    .local v5, "allowStretching":Z
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    move/from16 v19, v5

    .end local v5    # "allowStretching":Z
    .local v19, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/ActivityStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    .line 983
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_8

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 984
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_9

    .line 985
    :cond_8
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/ActivityStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 986
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 987
    const/4 v5, 0x1

    .end local v19    # "allowStretching":Z
    .restart local v5    # "allowStretching":Z
    goto :goto_5

    .line 992
    .end local v5    # "allowStretching":Z
    .restart local v19    # "allowStretching":Z
    :cond_9
    move/from16 v5, v19

    .end local v19    # "allowStretching":Z
    .restart local v5    # "allowStretching":Z
    :goto_5
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v2

    .end local v2    # "clipRect":Landroid/graphics/Rect;
    .local v19, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 993
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 994
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 996
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 999
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 1003
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 1004
    .local v2, "finalWidth":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 1005
    .local v11, "initialWidth":F
    move-object/from16 v20, v10

    .end local v10    # "task":Lcom/android/server/wm/Task;
    .local v20, "task":Lcom/android/server/wm/Task;
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v3, v10

    move/from16 v21, v13

    .end local v13    # "relayout":Z
    .local v21, "relayout":Z
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 1006
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    div-float/2addr v10, v13

    .line 1007
    .local v10, "tw":F
    move v13, v10

    .line 1008
    .local v13, "th":F
    sub-float v22, v2, v11

    mul-float v22, v22, v10

    add-float v22, v11, v22

    move/from16 v23, v2

    .end local v2    # "finalWidth":F
    .local v23, "finalWidth":F
    div-float v2, v22, v11

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 1009
    if-eqz v5, :cond_a

    .line 1010
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 1011
    .local v2, "finalHeight":F
    move/from16 v22, v5

    .end local v5    # "allowStretching":Z
    .local v22, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1012
    .local v5, "initialHeight":F
    move/from16 v24, v11

    .end local v11    # "initialWidth":F
    .local v24, "initialWidth":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v1, v11

    move/from16 v25, v13

    .end local v13    # "th":F
    .local v25, "th":F
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 1013
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v1, v13

    div-float v13, v11, v13

    .line 1014
    .end local v25    # "th":F
    .restart local v13    # "th":F
    sub-float v11, v2, v5

    mul-float/2addr v11, v10

    add-float/2addr v11, v5

    div-float/2addr v11, v5

    iput v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1016
    .end local v2    # "finalHeight":F
    .end local v5    # "initialHeight":F
    goto :goto_6

    .line 1017
    .end local v22    # "allowStretching":Z
    .end local v24    # "initialWidth":F
    .local v5, "allowStretching":Z
    .restart local v11    # "initialWidth":F
    :cond_a
    move/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v13

    .end local v5    # "allowStretching":Z
    .end local v11    # "initialWidth":F
    .end local v13    # "th":F
    .restart local v22    # "allowStretching":Z
    .restart local v24    # "initialWidth":F
    .restart local v25    # "th":F
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1021
    .end local v25    # "th":F
    .restart local v13    # "th":F
    :goto_6
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v10

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v4, v2

    .line 1022
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v2, v13

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v12, v2

    .line 1030
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 1031
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iget v11, v6, Landroid/graphics/Rect;->top:I

    move/from16 v25, v4

    .end local v4    # "posX":I
    .local v25, "posX":I
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    int-to-float v4, v11

    mul-float/2addr v4, v13

    float-to-int v4, v4

    iget v11, v6, Landroid/graphics/Rect;->left:I

    move/from16 v26, v12

    .end local v12    # "posY":I
    .local v26, "posY":I
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float v12, v14, v12

    mul-float/2addr v12, v10

    sub-float v12, v14, v12

    float-to-int v12, v12

    add-int/2addr v11, v12

    iget v12, v6, Landroid/graphics/Rect;->top:I

    move/from16 v27, v10

    .end local v10    # "tw":F
    .local v27, "tw":F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v15, v10

    mul-float/2addr v10, v13

    sub-float v10, v15, v10

    float-to-int v10, v10

    add-int/2addr v12, v10

    invoke-virtual {v2, v5, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1037
    .end local v13    # "th":F
    .end local v23    # "finalWidth":F
    .end local v24    # "initialWidth":F
    .end local v27    # "tw":F
    move/from16 v4, v25

    move/from16 v12, v26

    goto :goto_7

    .line 1040
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "relayout":Z
    .end local v22    # "allowStretching":Z
    .end local v25    # "posX":I
    .end local v26    # "posY":I
    .restart local v4    # "posX":I
    .restart local v5    # "allowStretching":Z
    .local v10, "task":Lcom/android/server/wm/Task;
    .restart local v12    # "posY":I
    .local v13, "relayout":Z
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_b
    move/from16 v22, v5

    move-object/from16 v20, v10

    move/from16 v21, v13

    .end local v5    # "allowStretching":Z
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "relayout":Z
    .restart local v20    # "task":Lcom/android/server/wm/Task;
    .restart local v21    # "relayout":Z
    .restart local v22    # "allowStretching":Z
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 1041
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1046
    const/4 v2, 0x0

    .line 1052
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v2    # "clipRect":Landroid/graphics/Rect;
    :goto_7
    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 1053
    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v10, v11, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v12, v5

    .line 1062
    int-to-float v5, v4

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v13, v11, v13

    mul-float/2addr v10, v13

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 1063
    int-to-float v5, v12

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v11, v13

    mul-float/2addr v10, v11

    add-float/2addr v5, v10

    float-to-int v5, v5

    .line 1065
    .end local v12    # "posY":I
    .local v5, "posY":I
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    int-to-double v12, v5

    .line 1066
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 1065
    invoke-virtual {v10, v11, v12, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1074
    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v10, :cond_c

    .line 1075
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1076
    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1078
    .end local v1    # "surfaceContentHeight":F
    .end local v3    # "surfaceContentWidth":F
    .end local v4    # "posX":I
    .end local v5    # "posY":I
    .end local v16    # "hInsets":I
    .end local v17    # "vInsets":I
    .end local v22    # "allowStretching":Z
    :cond_c
    move-object v10, v2

    goto/16 :goto_a

    .line 1079
    .end local v18    # "wasForceScaled":Z
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "relayout":Z
    .restart local v10    # "task":Lcom/android/server/wm/Task;
    .local v11, "wasForceScaled":Z
    .restart local v13    # "relayout":Z
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v18, v11

    move/from16 v21, v13

    .end local v2    # "clipRect":Landroid/graphics/Rect;
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "wasForceScaled":Z
    .end local v13    # "relayout":Z
    .restart local v18    # "wasForceScaled":Z
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v20    # "task":Lcom/android/server/wm/Task;
    .restart local v21    # "relayout":Z
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1081
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_13

    .line 1083
    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1084
    .local v1, "xOffset":I
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1085
    .local v2, "yOffset":I
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_11

    .line 1086
    if-eqz v21, :cond_e

    .line 1091
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 1092
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1093
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v10

    .line 1092
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/view/SurfaceControl;J)V

    move-object/from16 v4, v19

    goto :goto_8

    .line 1095
    :cond_e
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1096
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 1097
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1098
    if-eqz v3, :cond_f

    .line 1099
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1102
    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v1, v4

    .line 1103
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v2, v4

    .line 1107
    if-eqz v19, :cond_10

    .line 1108
    move-object/from16 v4, v19

    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1109
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 1107
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v4, v19

    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    goto :goto_8

    .line 1085
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v4, v19

    .line 1113
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_8
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-nez v3, :cond_12

    .line 1114
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v5, v1

    int-to-float v10, v2

    invoke-virtual {v3, v5, v10, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto :goto_9

    .line 1116
    :cond_12
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperScale:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperPositionAndScale(IIFZ)V

    goto :goto_9

    .line 1081
    .end local v1    # "xOffset":I
    .end local v2    # "yOffset":I
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v4, v19

    .line 1127
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_9
    move-object v10, v4

    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .local v10, "clipRect":Landroid/graphics/Rect;
    :goto_a
    if-eqz v18, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v1, :cond_14

    .line 1128
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1129
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 1128
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/view/SurfaceControl;J)V

    .line 1130
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1134
    :cond_14
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_16

    .line 1137
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-nez v1, :cond_15

    .line 1138
    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1139
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v11, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v5, v11

    move-object v11, v6

    .end local v6    # "insets":Landroid/graphics/Rect;
    .local v11, "insets":Landroid/graphics/Rect;
    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    goto :goto_b

    .line 1137
    .end local v11    # "insets":Landroid/graphics/Rect;
    .restart local v6    # "insets":Landroid/graphics/Rect;
    :cond_15
    move-object v11, v6

    .end local v6    # "insets":Landroid/graphics/Rect;
    .restart local v11    # "insets":Landroid/graphics/Rect;
    goto :goto_b

    .line 1134
    .end local v11    # "insets":Landroid/graphics/Rect;
    .restart local v6    # "insets":Landroid/graphics/Rect;
    :cond_16
    move-object v11, v6

    .line 1147
    .end local v6    # "insets":Landroid/graphics/Rect;
    .restart local v11    # "insets":Landroid/graphics/Rect;
    :goto_b
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_17

    .line 1148
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1149
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1151
    :cond_17
    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1292
    const-string v0, "WindowManager"

    const-string v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1295
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1296
    return-void
.end method

.method setWallpaperOffset(IIF)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scale"    # F

    .line 1299
    const-string v0, "<<< CLOSE TRANSACTION setWallpaperOffset"

    const-string v1, "setWallpaperOffset"

    const-string v2, "WindowManager"

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v3, p2, :cond_0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperScale:F

    invoke-static {v3, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1300
    return v4

    .line 1302
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1303
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1304
    iput p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperScale:F

    .line 1306
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_3

    .line 1308
    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_1

    .line 1309
    const-string v3, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1312
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperPositionAndScale(IIFZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1318
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    .line 1319
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1317
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1313
    :catch_0
    move-exception v3

    .line 1314
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error positioning surface of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pos=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    nop

    .end local v3    # "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1318
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    .line 1319
    goto :goto_0

    .line 1317
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1318
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    .line 1319
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_2
    throw v3

    .line 1324
    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1611
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1613
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1614
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1615
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1616
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 6

    .line 1356
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1357
    return v1

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1360
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1361
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    const/4 v4, -0x3

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1362
    .local v4, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v4, v5, :cond_3

    .line 1363
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1364
    return v3

    .line 1366
    :cond_3
    return v1
.end method
