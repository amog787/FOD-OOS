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

.field mChildrenDetached:Z

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

.field private final mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

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

.field final mWin:Lcom/android/server/wm/WindowState;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 139
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 140
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 155
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 156
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 169
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 213
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 214
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 220
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 228
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 230
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 234
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 241
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    .line 244
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 246
    .local v0, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 247
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 248
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 249
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 251
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 252
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 253
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 254
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 255
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 256
    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    .line 880
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

    .line 882
    :cond_0
    if-eqz p1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    .line 890
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 828
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 829
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 831
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 832
    return v2

    .line 835
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    return v2

    .line 842
    :cond_1
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v3, :cond_2

    .line 843
    return v2

    .line 848
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_3

    .line 849
    return v2

    .line 852
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

    .line 855
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    .line 857
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying decor to crop win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDecorFrame="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDecorFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSystemDecorRect="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 863
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

    .line 865
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    .line 869
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 871
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

    .line 874
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 876
    const/4 v2, 0x1

    return v2
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "outSize"    # Landroid/graphics/Rect;

    .line 572
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 573
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    .line 575
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 576
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 583
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 584
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 585
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->getCompatFrameSize(Landroid/graphics/Rect;)V

    .line 593
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 594
    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 596
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 597
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 601
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

    .line 603
    return-void
.end method

.method private getLayerStack()I
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .line 1351
    .local v0, "shown":Z
    if-nez v0, :cond_1

    .line 1352
    const/4 v1, 0x0

    return v1

    .line 1356
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v3, :cond_2

    .line 1357
    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V

    .line 1358
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    .line 1361
    :cond_2
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 10
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v0, p2, :cond_0

    .line 1404
    return v1

    .line 1407
    :cond_0
    const/16 v0, 0x7db

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v0, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1409
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1410
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1417
    :cond_1
    const-wide/16 v2, 0x20

    const-string v4, "WSA#applyAnimationLocked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1418
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1421
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v4}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1422
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1423
    return v1

    .line 1426
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/DisplayPolicy;->selectAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    .line 1427
    .local v4, "anim":I
    const/4 v5, -0x1

    .line 1428
    .local v5, "attr":I
    const/4 v6, 0x0

    .line 1429
    .local v6, "a":Landroid/view/animation/Animation;
    const/4 v7, 0x3

    if-eqz v4, :cond_4

    .line 1430
    const/4 v1, -0x1

    if-eq v4, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    goto :goto_2

    .line 1434
    :cond_4
    if-eqz p2, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-static {v8}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkAppWindowAnimating(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1435
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1436
    return v1

    .line 1439
    :cond_5
    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    if-eq p1, v7, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    goto :goto_1

    .line 1450
    :cond_6
    const/4 v5, 0x3

    goto :goto_1

    .line 1447
    :cond_7
    const/4 v5, 0x2

    .line 1448
    goto :goto_1

    .line 1444
    :cond_8
    const/4 v5, 0x1

    .line 1445
    goto :goto_1

    .line 1441
    :cond_9
    const/4 v5, 0x0

    .line 1442
    nop

    .line 1453
    :goto_1
    if-ltz v5, :cond_a

    .line 1454
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v5, v9}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1460
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mIsQuickReplyImeWindow:Z

    const-string v8, "WindowManager"

    if-eqz v1, :cond_b

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QuickReply: applyAnimation: set null for "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v6, 0x0

    .line 1463
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1466
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v1, p1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->canSkiWindowAnimation(Lcom/android/server/wm/WindowState;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1467
    const/4 v6, 0x0

    .line 1468
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1471
    :cond_c
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyAnimation: win="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " anim="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " attr=0x"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " a="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " transit="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " type="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isEntrance="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " Callers "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_d
    if-eqz v6, :cond_f

    .line 1479
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_e

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

    invoke-static {v8, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1481
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1483
    .end local v4    # "anim":I
    .end local v5    # "attr":I
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_f
    goto :goto_3

    .line 1484
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1487
    :goto_3
    if-nez p2, :cond_11

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_11

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1491
    :cond_11
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1492
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    .line 1368
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_0

    .line 1369
    return-void

    .line 1373
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v0, :cond_1

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1375
    const/4 v0, 0x1

    .local v0, "transit":I
    goto :goto_0

    .line 1377
    .end local v0    # "transit":I
    :cond_1
    const/4 v0, 0x3

    .line 1382
    .restart local v0    # "transit":I
    :goto_0
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1383
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1386
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_3

    .line 1387
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1389
    :cond_3
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 4

    .line 355
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cur mDrawState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 361
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 369
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_4

    .line 371
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v0

    .line 373
    :cond_4
    return v0
.end method

.method computeShownFrameLocked()V
    .locals 17

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 720
    .local v1, "displayId":I
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 722
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 723
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 725
    .local v3, "windowParticipatesInScreenRotationAnimation":Z
    if-eqz v2, :cond_0

    .line 726
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 729
    .local v6, "screenAnimation":Z
    :goto_0
    const-string v7, "WindowManager"

    if-eqz v6, :cond_9

    .line 731
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    .line 732
    .local v8, "frame":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 733
    .local v9, "tmpFloats":[F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 736
    .local v10, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->isRotating()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 744
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 745
    .local v11, "w":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    .line 746
    .local v12, "h":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v14, v11, v13

    if-ltz v14, :cond_1

    cmpl-float v14, v12, v13

    if-ltz v14, :cond_1

    .line 747
    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v14, v11

    add-float/2addr v15, v13

    div-float v16, v14, v12

    add-float v13, v16, v13

    div-float v5, v11, v14

    div-float v14, v12, v14

    invoke-virtual {v10, v15, v13, v5, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    .line 749
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 751
    .end local v11    # "w":F
    .end local v12    # "h":F
    :goto_1
    goto :goto_2

    .line 752
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 755
    :goto_2
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 759
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 769
    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 770
    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 771
    const/4 v5, 0x0

    aget v5, v9, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 772
    const/4 v5, 0x3

    aget v5, v9, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 773
    aget v4, v9, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 774
    const/4 v4, 0x4

    aget v4, v9, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 781
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 782
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 783
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 784
    invoke-virtual {v4, v5, v11, v12, v13}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 786
    :cond_3
    if-eqz v6, :cond_4

    .line 787
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 793
    :cond_4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v4, :cond_8

    :cond_5
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v11, v4

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v11, v13

    if-eqz v5, :cond_6

    float-to-double v4, v4

    const-wide/16 v11, 0x0

    cmpl-double v4, v4, v11

    if-nez v4, :cond_8

    .line 794
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeShownFrameLocked: Animating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    if-eqz v6, :cond_7

    .line 797
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_3

    :cond_7
    const-string v5, "null"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 794
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_8
    return-void

    .line 799
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v9    # "tmpFloats":[F
    .end local v10    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_9
    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v4, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v4, :cond_a

    .line 800
    return-void

    .line 801
    :cond_a
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 807
    return-void

    .line 810
    :cond_b
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeShownFrameLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not attached, mAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_c
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 815
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 816
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 817
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 818
    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 819
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 820
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .locals 23
    .param p1, "windowType"    # I
    .param p2, "ownerUid"    # I

    .line 452
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 454
    .local v12, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 455
    return-object v0

    .line 457
    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 459
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 460
    const v0, 0x6bd83

    move v14, v0

    .end local p1    # "windowType":I
    .local v0, "windowType":I
    goto :goto_0

    .line 459
    .end local v0    # "windowType":I
    .restart local p1    # "windowType":I
    :cond_1
    move/from16 v14, p1

    .line 463
    .end local p1    # "windowType":I
    .local v14, "windowType":I
    :goto_0
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 465
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v15, "WindowManager"

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 470
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 472
    const/4 v0, 0x4

    .line 473
    .local v0, "flags":I
    iget-object v10, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 475
    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    or-int/lit16 v0, v0, 0x80

    move v1, v0

    goto :goto_1

    .line 475
    :cond_4
    move v1, v0

    .line 479
    .end local v0    # "flags":I
    .local v1, "flags":I
    :goto_1
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v11, v12, v10, v0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 480
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 481
    .local v9, "width":I
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 483
    .local v8, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v7, " format="

    if-eqz v0, :cond_5

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating surface in session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_5
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 496
    iget v0, v12, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v2, "createSurfaceLocked"

    invoke-static {v0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 502
    const/16 v16, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v17, 0x1000000

    and-int v0, v0, v17

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_2

    :cond_6
    move v0, v13

    .line 503
    .local v0, "isHwAccelerated":Z
    :goto_2
    if-eqz v0, :cond_7

    const/4 v2, -0x3

    goto :goto_3

    :cond_7
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_3
    move v5, v2

    .line 504
    .local v5, "format":I
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-nez v2, :cond_8

    :try_start_1
    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_8

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_8

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_8

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_8

    .line 513
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_8

    .line 514
    or-int/lit16 v1, v1, 0x400

    move/from16 v18, v1

    goto :goto_4

    .line 542
    .end local v0    # "isHwAccelerated":Z
    .end local v5    # "format":I
    :catch_0
    move-exception v0

    move/from16 v18, v1

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    goto/16 :goto_b

    .line 537
    :catch_1
    move-exception v0

    move/from16 v18, v1

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    goto/16 :goto_c

    .line 517
    .restart local v0    # "isHwAccelerated":Z
    .restart local v5    # "format":I
    :cond_8
    move/from16 v18, v1

    .end local v1    # "flags":I
    .local v18, "flags":I
    :goto_4
    :try_start_2
    new-instance v4, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 518
    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-object v1, v4

    move-object v13, v4

    move v4, v9

    move/from16 p1, v5

    .end local v5    # "format":I
    .local p1, "format":I
    move v5, v8

    move-object/from16 v19, v15

    move v15, v6

    move/from16 v6, p1

    move-object/from16 v20, v7

    move/from16 v7, v18

    move/from16 v21, v8

    .end local v8    # "height":I
    .local v21, "height":I
    move-object/from16 v8, p0

    move/from16 v22, v9

    .end local v9    # "width":I
    .local v22, "width":I
    move v9, v14

    move-object v15, v10

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    move/from16 v10, p2

    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 520
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v2, v2, v17

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 523
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 524
    move/from16 v1, p1

    .end local p1    # "format":I
    .local v1, "format":I
    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    .line 526
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 528
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v2, :cond_b

    :try_start_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v4, v19

    move-object/from16 v3, v20

    goto :goto_7

    .line 542
    .end local v0    # "isHwAccelerated":Z
    .end local v1    # "format":I
    :catch_2
    move-exception v0

    move-object/from16 v4, v19

    move/from16 v5, v21

    move/from16 v2, v22

    goto/16 :goto_b

    .line 537
    :catch_3
    move-exception v0

    move-object/from16 v4, v19

    move/from16 v5, v21

    move/from16 v2, v22

    goto/16 :goto_c

    .line 529
    .restart local v0    # "isHwAccelerated":Z
    .restart local v1    # "format":I
    :cond_b
    :goto_6
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CREATE SURFACE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN SESSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 529
    move-object/from16 v4, v19

    :try_start_6
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 546
    .end local v0    # "isHwAccelerated":Z
    .end local v1    # "format":I
    :goto_7
    nop

    .line 548
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", set left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_d

    .line 552
    const-string v0, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    .end local v22    # "width":I
    .local v2, "width":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v21

    .end local v21    # "height":I
    .local v5, "height":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_8

    .line 551
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v21    # "height":I
    .restart local v22    # "width":I
    :cond_d
    move/from16 v5, v21

    move/from16 v2, v22

    .line 560
    .end local v21    # "height":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    :goto_8
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_e

    .line 561
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE pid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 565
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 567
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_f
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 542
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v21    # "height":I
    .restart local v22    # "width":I
    :catch_4
    move-exception v0

    goto :goto_9

    .line 537
    :catch_5
    move-exception v0

    goto :goto_a

    .line 542
    :catch_6
    move-exception v0

    move-object/from16 v4, v19

    :goto_9
    move/from16 v5, v21

    move/from16 v2, v22

    .end local v21    # "height":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    goto :goto_b

    .line 537
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v21    # "height":I
    .restart local v22    # "width":I
    :catch_7
    move-exception v0

    move-object/from16 v4, v19

    :goto_a
    move/from16 v5, v21

    move/from16 v2, v22

    .end local v21    # "height":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    goto :goto_c

    .line 542
    .end local v2    # "width":I
    .end local v5    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_8
    move-exception v0

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    .end local v8    # "height":I
    .end local v9    # "width":I
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_b

    .line 537
    .end local v2    # "width":I
    .end local v5    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_9
    move-exception v0

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    .end local v8    # "height":I
    .end local v9    # "width":I
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 542
    .end local v2    # "width":I
    .end local v5    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "flags":I
    .local v1, "flags":I
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_a
    move-exception v0

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    move/from16 v18, v1

    .line 543
    .end local v1    # "flags":I
    .end local v8    # "height":I
    .end local v9    # "width":I
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "flags":I
    :goto_b
    const-string v1, "Exception creating surface (parent dead?)"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 545
    return-object v16

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "width":I
    .end local v5    # "height":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "flags":I
    .restart local v1    # "flags":I
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_b
    move-exception v0

    move v5, v8

    move v2, v9

    move-object v4, v15

    move-object v15, v10

    move/from16 v18, v1

    .line 538
    .end local v1    # "flags":I
    .end local v8    # "height":I
    .end local v9    # "width":I
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "flags":I
    :goto_c
    const-string v1, "OutOfResourcesException creating surface"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v3, "create"

    const/4 v4, 0x1

    invoke-virtual {v1, v11, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 540
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 541
    return-object v16
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 3

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 692
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v1, "DESTROY PENDING"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 699
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_2
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when destroying Window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 710
    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 3

    .line 403
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 414
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 420
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 422
    return-void
.end method

.method destroySurface()V
    .locals 6

    .line 1577
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    .line 1578
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    :cond_0
    nop

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1585
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1586
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1587
    goto :goto_1

    .line 1584
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1580
    :catch_0
    move-exception v2

    .line 1581
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

    .line 1584
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1588
    :goto_1
    return-void

    .line 1584
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1585
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1586
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    throw v2
.end method

.method destroySurfaceLocked()V
    .locals 6

    .line 610
    const-string v0, "WindowManager"

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 611
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_0

    .line 613
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 617
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_1

    .line 618
    return-void

    .line 625
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 626
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 630
    :cond_2
    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " destroying surface "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_7

    .line 633
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v3, v5, :cond_a

    .line 634
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_6

    .line 641
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_5

    .line 643
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v5, "DESTROY PENDING"

    invoke-static {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 645
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 647
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_0

    .line 656
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_9

    .line 658
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v5, "DESTROY"

    invoke-static {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 660
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 664
    :cond_a
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v3, :cond_b

    .line 665
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_b
    goto :goto_1

    .line 667
    :catch_0
    move-exception v3

    .line 668
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

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

    .line 669
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_c

    .line 677
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 679
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 680
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 681
    return-void
.end method

.method detachChildren()V
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    .line 1606
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 1607
    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 2

    .line 190
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

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    const-string v0, "HAS_DRAWN"

    return-object v0

    .line 194
    :cond_1
    const-string v0, "READY_TO_SHOW"

    return-object v0

    .line 193
    :cond_2
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 192
    :cond_3
    const-string v0, "DRAW_PENDING"

    return-object v0

    .line 191
    :cond_4
    const-string v0, "NO_SURFACE"

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1507
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1

    .line 1511
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1513
    :cond_1
    if-eqz p3, :cond_3

    .line 1514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1517
    const-string v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1519
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1520
    const-string v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1522
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1525
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_4

    .line 1526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1529
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_6

    .line 1530
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1531
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1533
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

    .line 1534
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1535
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1536
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1538
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 1539
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1540
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1541
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1542
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1543
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1547
    :cond_a
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-eqz v0, :cond_c

    .line 1548
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1549
    const-string v0, " mYOffset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1552
    :cond_c
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    .local v0, "startingWindow":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing drawing window "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": mDrawState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    const/4 v2, 0x0

    .line 339
    .local v2, "layoutNeeded":Z
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v1, :cond_5

    .line 340
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_3

    .line 341
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 347
    const/4 v2, 0x1

    .line 350
    :cond_5
    return v2
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1127
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1130
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1132
    :goto_0
    return-void
.end method

.method getShown()Z
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 1572
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .locals 1

    .line 606
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

    .line 309
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 327
    return-void
.end method

.method isForceScaled()Z
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1596
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    const/4 v1, 0x1

    return v1

    .line 1599
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method markPreservedSurfaceForDestroy()V
    .locals 2

    .line 425
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    return-void
.end method

.method onAnimationFinished()V
    .locals 6

    .line 260
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

    .line 263
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_3

    .line 271
    :cond_2
    const-string v0, "one-handed mode window animation done"

    invoke-static {v0}, Lcom/android/server/wm/OpOneHandModeInjector;->notifyOneHandModeAnimationDone(Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const-string v0, "window with dim layer behind entered"

    invoke-static {v0}, Lcom/android/server/wm/OpOneHandModeInjector;->forceCancelOneHandMode(Ljava/lang/String;)V

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 285
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 294
    .local v1, "displayId":I
    const/16 v2, 0x8

    .line 295
    .local v2, "pendingLayoutChanges":I
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 296
    or-int/lit8 v2, v2, 0x4

    .line 298
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 299
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_7

    .line 300
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 301
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 300
    const-string v5, "WindowStateAnimator"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 303
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_8

    .line 304
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 306
    :cond_8
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .locals 16
    .param p1, "recoveringMemory"    # Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1136
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    const-string v3, "Orientation change skips hidden "

    const-string v4, "WindowManager"

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 1140
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_0

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1146
    :cond_1
    return-void

    .line 1149
    :cond_2
    const/4 v2, 0x0

    .line 1151
    .local v2, "displayed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1153
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1155
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const-string v7, "prepareSurfaceLocked"

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v6, :cond_3

    .line 1157
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1158
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_2

    .line 1171
    :cond_4
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 1233
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareSurface: No changes in animation for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1179
    :cond_7
    :goto_0
    const/4 v2, 0x1

    .line 1180
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1181
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1182
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1183
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1184
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1185
    iget v3, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1186
    iget v3, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1187
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "alpha="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " matrix=["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "]["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1195
    :cond_8
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v11, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v12, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v13, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v14, v3, v6

    .line 1196
    move/from16 v15, p1

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v3

    .line 1203
    .local v3, "prepared":Z
    if-eqz v3, :cond_b

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    .line 1204
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_b

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1207
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1208
    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1209
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_9

    .line 1210
    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 1212
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1216
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1218
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_b

    .line 1219
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showSurfaceRobustlyLocked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1221
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v9

    .line 1219
    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_1

    .line 1225
    :cond_a
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1229
    :cond_b
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1230
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v8, v6, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1232
    .end local v3    # "prepared":Z
    :cond_c
    goto :goto_3

    .line 1159
    :cond_d
    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1160
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1166
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1167
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1168
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1240
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1241
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1242
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1243
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation continue waiting for draw in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1246
    :cond_f
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1247
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation change complete in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    .line 1252
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v8, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1254
    :cond_11
    return-void
.end method

.method preserveSurfaceLocked()V
    .locals 4

    .line 377
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 385
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 386
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 387
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 388
    return-void

    .line 390
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "SET FREEZE LAYER"

    invoke-static {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 397
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 400
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1566
    return-void
.end method

.method resetDrawState()V
    .locals 2

    .line 436
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    .line 439
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 449
    :goto_0
    return-void
.end method

.method setColorSpaceAgnosticLocked(Z)V
    .locals 1
    .param p1, "agnostic"    # Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1332
    return-void

    .line 1334
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 1335
    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .locals 0
    .param p1, "offsetPositionForStackResize"    # Z

    .line 1610
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    .line 1611
    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1320
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1321
    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 1324
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1325
    return-void

    .line 1327
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1328
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 28
    .param p1, "recoveringMemory"    # Z

    .line 893
    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    .line 894
    return-void

    .line 897
    :cond_0
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 898
    .local v8, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 899
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 901
    .local v10, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 903
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 904
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 906
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 915
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

    .line 916
    .local v13, "relayout":Z
    if-eqz v13, :cond_3

    .line 917
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 918
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 917
    invoke-virtual {v2, v4, v5, v7}, Lcom/android/server/wm/WindowSurfaceController;->setBufferSizeInTransaction(IIZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_2

    .line 920
    :cond_3
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 922
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

    .line 927
    const/4 v2, 0x0

    .line 928
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 929
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 932
    :cond_5
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v4

    int-to-float v14, v4

    .line 933
    .local v14, "surfaceWidth":F
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v4

    int-to-float v15, v4

    .line 935
    .local v15, "surfaceHeight":F
    iget-object v6, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 937
    .local v6, "insets":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 938
    iget v4, v6, Landroid/graphics/Rect;->left:I

    iget v5, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 939
    .local v4, "hInsets":I
    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    .line 940
    .local v5, "vInsets":I
    int-to-float v3, v4

    sub-float v3, v14, v3

    .line 941
    .local v3, "surfaceContentWidth":F
    int-to-float v1, v5

    sub-float v1, v15, v1

    .line 942
    .local v1, "surfaceContentHeight":F
    iget-boolean v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v12, :cond_6

    .line 943
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "hInsets":I
    .local v16, "hInsets":I
    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto :goto_4

    .line 942
    .end local v16    # "hInsets":I
    .restart local v4    # "hInsets":I
    :cond_6
    move/from16 v16, v4

    .line 946
    .end local v4    # "hInsets":I
    .restart local v16    # "hInsets":I
    :goto_4
    const/4 v4, 0x0

    .line 947
    .local v4, "posX":I
    const/4 v12, 0x0

    .line 948
    .local v12, "posY":I
    move/from16 v17, v5

    .end local v5    # "vInsets":I
    .local v17, "vInsets":I
    iget-object v5, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v18, v11

    .end local v11    # "wasForceScaled":Z
    .local v18, "wasForceScaled":Z
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 950
    const/4 v5, 0x0

    .line 951
    .local v5, "allowStretching":Z
    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v19, v5

    .end local v5    # "allowStretching":Z
    .local v19, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    .line 959
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 960
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_8

    :cond_7
    iget-object v5, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 961
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v5

    if-nez v5, :cond_8

    .line 962
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v11, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 963
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 964
    const/4 v5, 0x1

    .end local v19    # "allowStretching":Z
    .restart local v5    # "allowStretching":Z
    goto :goto_5

    .line 969
    .end local v5    # "allowStretching":Z
    .restart local v19    # "allowStretching":Z
    :cond_8
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

    .line 970
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 971
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 973
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 976
    iget-object v2, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 980
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 981
    .local v2, "finalWidth":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 982
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

    .line 983
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    div-float/2addr v10, v13

    .line 984
    .local v10, "tw":F
    move v13, v10

    .line 985
    .local v13, "th":F
    sub-float v22, v2, v11

    mul-float v22, v22, v10

    add-float v22, v11, v22

    move/from16 v23, v2

    .end local v2    # "finalWidth":F
    .local v23, "finalWidth":F
    div-float v2, v22, v11

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 986
    if-eqz v5, :cond_9

    .line 987
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 988
    .local v2, "finalHeight":F
    move/from16 v22, v5

    .end local v5    # "allowStretching":Z
    .local v22, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 989
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

    .line 990
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v1, v13

    div-float v13, v11, v13

    .line 991
    .end local v25    # "th":F
    .restart local v13    # "th":F
    sub-float v11, v2, v5

    mul-float/2addr v11, v10

    add-float/2addr v11, v5

    div-float/2addr v11, v5

    iput v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 993
    .end local v2    # "finalHeight":F
    .end local v5    # "initialHeight":F
    move/from16 v25, v13

    goto :goto_6

    .line 994
    .end local v22    # "allowStretching":Z
    .end local v24    # "initialWidth":F
    .local v5, "allowStretching":Z
    .restart local v11    # "initialWidth":F
    :cond_9
    move/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v13

    .end local v5    # "allowStretching":Z
    .end local v11    # "initialWidth":F
    .end local v13    # "th":F
    .restart local v22    # "allowStretching":Z
    .restart local v24    # "initialWidth":F
    .restart local v25    # "th":F
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 998
    :goto_6
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v10

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v4, v2

    .line 999
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v2, v2, v25

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v12, v2

    .line 1007
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 1008
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

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v13

    int-to-float v11, v11

    mul-float v11, v11, v25

    float-to-int v11, v11

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move/from16 v26, v4

    .end local v4    # "posX":I
    .local v26, "posX":I
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float v4, v14, v4

    mul-float/2addr v4, v10

    sub-float v4, v14, v4

    float-to-int v4, v4

    add-int/2addr v13, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    move/from16 v27, v10

    .end local v10    # "tw":F
    .local v27, "tw":F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v15, v10

    mul-float v10, v10, v25

    sub-float v10, v15, v10

    float-to-int v10, v10

    add-int/2addr v4, v10

    invoke-virtual {v2, v5, v11, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1014
    .end local v23    # "finalWidth":F
    .end local v24    # "initialWidth":F
    .end local v25    # "th":F
    .end local v27    # "tw":F
    move/from16 v4, v26

    goto :goto_7

    .line 1017
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "relayout":Z
    .end local v22    # "allowStretching":Z
    .end local v26    # "posX":I
    .restart local v4    # "posX":I
    .restart local v5    # "allowStretching":Z
    .local v10, "task":Lcom/android/server/wm/Task;
    .local v13, "relayout":Z
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_a
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

    .line 1018
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1023
    const/4 v2, 0x0

    .line 1029
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

    .line 1030
    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v10, v11, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v12, v5

    .line 1039
    int-to-float v5, v4

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v13, v11, v13

    mul-float/2addr v10, v13

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 1040
    int-to-float v5, v12

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v11, v13

    mul-float/2addr v10, v11

    add-float/2addr v5, v10

    float-to-int v5, v5

    .line 1042
    .end local v12    # "posY":I
    .local v5, "posY":I
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    int-to-double v12, v5

    .line 1043
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 1042
    invoke-virtual {v10, v11, v12, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1051
    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v10, :cond_b

    .line 1052
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1053
    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1055
    .end local v1    # "surfaceContentHeight":F
    .end local v3    # "surfaceContentWidth":F
    .end local v4    # "posX":I
    .end local v5    # "posY":I
    .end local v16    # "hInsets":I
    .end local v17    # "vInsets":I
    .end local v22    # "allowStretching":Z
    :cond_b
    move-object v10, v2

    goto/16 :goto_a

    .line 1056
    .end local v18    # "wasForceScaled":Z
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "relayout":Z
    .restart local v10    # "task":Lcom/android/server/wm/Task;
    .local v11, "wasForceScaled":Z
    .restart local v13    # "relayout":Z
    :cond_c
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

    .line 1058
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_11

    .line 1060
    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1061
    .local v1, "xOffset":I
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1062
    .local v2, "yOffset":I
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_10

    .line 1063
    if-eqz v21, :cond_d

    .line 1068
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 1069
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1070
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v10

    .line 1069
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    move-object/from16 v4, v19

    goto :goto_8

    .line 1072
    :cond_d
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1073
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 1074
    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1075
    if-eqz v3, :cond_e

    .line 1076
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 1079
    :cond_e
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v1, v4

    .line 1080
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v2, v4

    .line 1084
    if-eqz v19, :cond_f

    .line 1085
    move-object/from16 v4, v19

    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1086
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 1084
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v4, v19

    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    goto :goto_8

    .line 1062
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v4, v19

    .line 1090
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_8
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v5, v1

    int-to-float v10, v2

    invoke-virtual {v3, v5, v10, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto :goto_9

    .line 1058
    .end local v1    # "xOffset":I
    .end local v2    # "yOffset":I
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v19    # "clipRect":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v4, v19

    .line 1099
    .end local v19    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_9
    move-object v10, v4

    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .local v10, "clipRect":Landroid/graphics/Rect;
    :goto_a
    if-eqz v18, :cond_12

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v1, :cond_12

    .line 1100
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1101
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 1100
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1102
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1106
    :cond_12
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_13

    .line 1107
    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1108
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

    .line 1106
    .end local v11    # "insets":Landroid/graphics/Rect;
    .restart local v6    # "insets":Landroid/graphics/Rect;
    :cond_13
    move-object v11, v6

    .line 1114
    .end local v6    # "insets":Landroid/graphics/Rect;
    .restart local v11    # "insets":Landroid/graphics/Rect;
    :goto_b
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_14

    .line 1115
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1116
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1119
    :cond_14
    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    .line 1258
    const-string v0, "WindowManager"

    const-string v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-void

    .line 1261
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1262
    return-void
.end method

.method setWallpaperOffset(II)Z
    .locals 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1265
    const-string v0, "<<< CLOSE TRANSACTION setWallpaperOffset"

    const-string v1, "setWallpaperOffset"

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v2, p2, :cond_0

    .line 1266
    return v3

    .line 1268
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1269
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1273
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    const-string v4, "WindowManager"

    if-eqz v2, :cond_1

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWallpaperOffset mXOffset="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mYOffset="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callers="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    .line 1275
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1274
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_2

    const-string v5, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1282
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1283
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1289
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_3
    return v2

    .line 1288
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v3

    .line 1285
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    nop

    .end local v3    # "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1289
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_4
    return v2

    .line 1288
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1289
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_5

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1556
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1558
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1559
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1560
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1561
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 6

    .line 1303
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1304
    return v1

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1307
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

    .line 1308
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    const/4 v4, -0x3

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1309
    .local v4, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v4, v5, :cond_3

    .line 1310
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1311
    return v3

    .line 1313
    :cond_3
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1496
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1497
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1498
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    .line 1499
    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1501
    :cond_0
    const-wide v2, 0x10e00000003L

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1502
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1503
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1504
    return-void
.end method
