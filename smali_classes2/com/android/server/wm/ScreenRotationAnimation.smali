.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"

# interfaces
.implements Lcom/android/server/wm/IScreenRotationAnimation;


# static fields
.field static DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TWO_PHASE_ANIMATION:Z = false

.field static final USE_CUSTOM_BLACK_FRAME:Z = false


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHasSetRotation:Z

.field mHeight:I

.field private mIsPerfLockAcquired:Z

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTakingScreenshotSuccess:Z

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "fixedToUserRotation"    # Z
    .param p4, "isSecure"    # Z
    .param p5, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 266
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const-string v9, "WindowManager"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 113
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 115
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 117
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 124
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 126
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 128
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 134
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 136
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 138
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 143
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 145
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 147
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 150
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 151
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 152
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 160
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 161
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 162
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 163
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 164
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 165
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 180
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    .line 186
    iput-boolean v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHasSetRotation:Z

    .line 267
    move-object/from16 v11, p5

    iput-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 268
    move-object/from16 v12, p1

    iput-object v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 269
    iput-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 270
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 272
    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 276
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v14

    .line 279
    .local v14, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 280
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p3, :cond_0

    .line 282
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 283
    iget v3, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 284
    .local v3, "originalWidth":I
    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v7, v3

    move v6, v4

    .local v4, "originalHeight":I
    goto :goto_0

    .line 287
    .end local v3    # "originalWidth":I
    .end local v4    # "originalHeight":I
    :cond_0
    iget v3, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 288
    .restart local v3    # "originalWidth":I
    iget v4, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    move v7, v3

    move v6, v4

    .line 290
    .end local v3    # "originalWidth":I
    .local v6, "originalHeight":I
    .local v7, "originalWidth":I
    :goto_0
    if-eq v14, v10, :cond_2

    const/4 v3, 0x3

    if-ne v14, v3, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 296
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_2

    .line 292
    :cond_2
    :goto_1
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 293
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 299
    :goto_2
    iput v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 300
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 301
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 303
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v3}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 305
    .local v5, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "ScreenshotSurface"

    .line 306
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 307
    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 308
    move/from16 v4, p4

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 317
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    move-object v3, v0

    .line 318
    .local v3, "t2":Landroid/view/SurfaceControl$Transaction;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0, v10}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 319
    invoke-virtual {v3, v10}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 322
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    move v2, v0

    .line 323
    .local v2, "displayId":I
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFactory;->make()Landroid/view/Surface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 324
    .local v16, "surface":Landroid/view/Surface;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v10, v16

    .end local v16    # "surface":Landroid/view/Surface;
    .local v10, "surface":Landroid/view/Surface;
    invoke-virtual {v10, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "t2":Landroid/view/SurfaceControl$Transaction;
    .local v16, "t2":Landroid/view/SurfaceControl$Transaction;
    const-string v3, "screenshot width-height "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 334
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->screenshot(III)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    move-object/from16 v17, v0

    .line 337
    .local v17, "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v17, :cond_4

    .line 340
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2

    move v4, v2

    .end local v2    # "displayId":I
    .local v4, "displayId":I
    move-object/from16 v2, p2

    move/from16 v3, p3

    move v8, v4

    .end local v4    # "displayId":I
    .local v8, "displayId":I
    move/from16 v4, p4

    move-object v11, v5

    .end local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v11, "t":Landroid/view/SurfaceControl$Transaction;
    move-object/from16 v5, p5

    move/from16 v18, v6

    .end local v6    # "originalHeight":I
    .local v18, "originalHeight":I
    move-object v6, v0

    move/from16 v19, v7

    .end local v7    # "originalWidth":I
    .local v19, "originalWidth":I
    move-object/from16 v7, v17

    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->init(Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    .line 350
    goto :goto_3

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to attach screenshot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 357
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x1eab91

    invoke-virtual {v11, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 358
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 359
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 361
    .end local v8    # "displayId":I
    .end local v11    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v18    # "originalHeight":I
    .end local v19    # "originalWidth":I
    .restart local v2    # "displayId":I
    .restart local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    :cond_4
    move v8, v2

    move-object v11, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v2    # "displayId":I
    .end local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .restart local v8    # "displayId":I
    .restart local v11    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v18    # "originalHeight":I
    .restart local v19    # "originalWidth":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to take screenshot of display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    .line 368
    :goto_4
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_1

    .line 371
    .end local v8    # "displayId":I
    .end local v10    # "surface":Landroid/view/Surface;
    .end local v16    # "t2":Landroid/view/SurfaceControl$Transaction;
    .end local v17    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    goto :goto_6

    .line 369
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v11    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v18    # "originalHeight":I
    .end local v19    # "originalWidth":I
    .restart local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    :catch_2
    move-exception v0

    move-object v11, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .line 370
    .end local v5    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v11    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v18    # "originalHeight":I
    .restart local v19    # "originalWidth":I
    :goto_5
    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v9, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_6
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_6
    invoke-direct {v1, v11, v14}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 376
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 377
    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 419
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 433
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 428
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 429
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 430
    goto :goto_0

    .line 424
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 425
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    goto :goto_0

    .line 421
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 422
    nop

    .line 436
    :goto_0
    return-void
.end method

.method private hasAnimations()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

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

.method private setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I

    .line 439
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 444
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 445
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 447
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** ROTATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 449
    return-void
.end method

.method private setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .locals 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 394
    .local v1, "x":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 395
    .local v0, "y":F
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 397
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 401
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x3

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 404
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 415
    .end local v0    # "y":F
    .end local v1    # "x":F
    :cond_1
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z
    .locals 27
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    .line 477
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v8, p9

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 479
    return v7

    .line 481
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 482
    return v6

    .line 485
    :cond_1
    iput-boolean v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 487
    const/16 v16, 0x0

    .line 490
    .local v16, "firstStart":Z
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v5

    .line 514
    .local v5, "delta":I
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    const-string v4, "WindowManager"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation delta: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " finalWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " finalHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " origWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " origHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    const/4 v0, 0x2

    if-eqz v15, :cond_3

    if-eqz v8, :cond_3

    .line 520
    const/4 v2, 0x1

    .line 521
    .local v2, "customAnim":Z
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v3, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 522
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move v3, v2

    goto :goto_1

    .line 524
    .end local v2    # "customAnim":Z
    :cond_3
    const/4 v2, 0x0

    .line 525
    .restart local v2    # "customAnim":Z
    if-eqz v5, :cond_7

    if-eq v5, v6, :cond_6

    if-eq v5, v0, :cond_5

    const/4 v3, 0x3

    if-eq v5, v3, :cond_4

    goto :goto_0

    .line 557
    :cond_4
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v0, 0x10a011b

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 559
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a011a

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 547
    :cond_5
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0115

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 549
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0114

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 555
    goto :goto_0

    .line 537
    :cond_6
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a011e

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 539
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a011d

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 545
    goto :goto_0

    .line 527
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0112

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 529
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0111

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 535
    nop

    .line 596
    :goto_0
    move v3, v2

    .end local v2    # "customAnim":Z
    .local v3, "customAnim":Z
    :goto_1
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v13, v14, v2, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 597
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v13, v14, v2, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 600
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_8

    .line 606
    invoke-static {v5, v7, v13, v14}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 608
    const/4 v2, 0x1

    invoke-static {v5, v2, v13, v14}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 616
    :cond_8
    iput-boolean v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 617
    iput-boolean v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 618
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 636
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 637
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 638
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 639
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 645
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v20

    .line 673
    .local v20, "layerStack":I
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    const-string v8, "Unable to allocate black surface"

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_9

    .line 680
    const/4 v2, 0x1

    invoke-static {v9, v3, v13, v14, v2}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 682
    const/4 v2, 0x0

    invoke-static {v9, v3, v13, v14, v2}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    move/from16 v21, v3

    move-object v11, v4

    move/from16 v25, v5

    move-object v10, v8

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 684
    :cond_9
    if-nez v3, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_b

    .line 693
    :try_start_0
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v5, v0, v2, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 697
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_a

    .line 701
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 702
    .local v0, "outer":Landroid/graphics/Rect;
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v2

    move/from16 v21, v3

    const/4 v7, 0x0

    .local v2, "inner":Landroid/graphics/Rect;
    goto :goto_2

    .line 711
    .end local v0    # "outer":Landroid/graphics/Rect;
    .end local v2    # "inner":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object v10, v8

    const/16 v18, 0x1

    goto/16 :goto_3

    .line 704
    :cond_a
    :try_start_2
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_4

    neg-int v2, v2

    const/4 v6, 0x1

    mul-int/2addr v2, v6

    :try_start_3
    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_3

    neg-int v7, v7

    mul-int/2addr v7, v6

    :try_start_4
    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v17, 0x2

    mul-int/lit8 v6, v6, 0x2

    move/from16 v21, v3

    .end local v3    # "customAnim":Z
    .local v21, "customAnim":Z
    :try_start_5
    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v7, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    .restart local v0    # "outer":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v17, v2

    .line 708
    .local v17, "inner":Landroid/graphics/Rect;
    :goto_2
    new-instance v6, Lcom/android/server/wm/BlackFrame;

    const v19, 0x1eab92

    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v22, v2

    move-object v2, v6

    move-object/from16 v23, v3

    move-object/from16 v3, p1

    move-object/from16 v24, v4

    move-object v4, v0

    move/from16 v25, v5

    .end local v5    # "delta":I
    .local v25, "delta":I
    move-object/from16 v5, v17

    move-object/from16 v26, v0

    move-object v0, v6

    const/16 v18, 0x1

    .end local v0    # "outer":Landroid/graphics/Rect;
    .local v26, "outer":Landroid/graphics/Rect;
    move/from16 v6, v19

    move-object/from16 v7, v23

    move-object v10, v8

    move/from16 v8, v22

    :try_start_6
    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 710
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9, v2}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_1

    .line 713
    .end local v17    # "inner":Landroid/graphics/Rect;
    .end local v26    # "outer":Landroid/graphics/Rect;
    move-object/from16 v11, v24

    goto :goto_4

    .line 711
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v25    # "delta":I
    .restart local v5    # "delta":I
    :catch_2
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object v10, v8

    const/16 v18, 0x1

    .end local v5    # "delta":I
    .restart local v25    # "delta":I
    goto :goto_3

    .end local v21    # "customAnim":Z
    .end local v25    # "delta":I
    .restart local v3    # "customAnim":Z
    .restart local v5    # "delta":I
    :catch_3
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v18, v6

    move-object v10, v8

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object v10, v8

    const/16 v18, 0x1

    .line 712
    .end local v3    # "customAnim":Z
    .end local v5    # "delta":I
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v21    # "customAnim":Z
    .restart local v25    # "delta":I
    :goto_3
    move-object/from16 v11, v24

    invoke-static {v11, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 684
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v21    # "customAnim":Z
    .end local v25    # "delta":I
    .restart local v3    # "customAnim":Z
    .restart local v5    # "delta":I
    :cond_b
    move/from16 v21, v3

    move-object v11, v4

    move/from16 v25, v5

    move-object v10, v8

    const/16 v18, 0x1

    .line 722
    .end local v3    # "customAnim":Z
    .end local v5    # "delta":I
    .restart local v21    # "customAnim":Z
    .restart local v25    # "delta":I
    :goto_4
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-nez v0, :cond_d

    :cond_c
    if-eqz v21, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_d

    .line 731
    :try_start_7
    new-instance v4, Landroid/graphics/Rect;

    neg-int v0, v13

    mul-int/lit8 v0, v0, 0x1

    neg-int v2, v14

    mul-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v13, 0x2

    mul-int/lit8 v5, v14, 0x2

    invoke-direct {v4, v0, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    .local v4, "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 734
    .local v5, "inner":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1eab90

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7 .. :try_end_7} :catch_5

    .line 738
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    goto :goto_5

    .line 736
    :catch_5
    move-exception v0

    .line 737
    .restart local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-static {v11, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_d
    :goto_5
    return v18
.end method

.method private stepAnimation(J)Z
    .locals 7
    .param p1, "now"    # J

    .line 852
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 853
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 855
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    const-wide/16 v1, 0x0

    const-string v3, "WindowManager"

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_2

    .line 856
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_1

    const-string v0, "Step: finish anim now ready"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 881
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v1, p1, v0

    :cond_3
    move-wide v0, v1

    .line 882
    .local v0, "finishNow":J
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step: finishNow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 906
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    .line 907
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 911
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 912
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 913
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 916
    sget-boolean v4, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v4, :cond_6

    .line 922
    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-static {p1, p2, v4, v5}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->stepAnimation(JILandroid/view/animation/Animation;)V

    .line 937
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    const/4 v5, 0x0

    if-nez v4, :cond_9

    .line 952
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_8

    .line 953
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v4, :cond_7

    const-string v4, "Exit animations done, clearing rotate exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 955
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 956
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 958
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_9

    iget-boolean v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v6, :cond_9

    .line 959
    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 960
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 964
    :cond_9
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v4, :cond_c

    .line 979
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_b

    .line 980
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v4, :cond_a

    const-string v4, "Enter animations done, clearing rotate enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 982
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 983
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 985
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_c

    iget-boolean v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v5, :cond_c

    .line 986
    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 987
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 1016
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1017
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1040
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v4, :cond_e

    :cond_d
    const/4 v2, 0x1

    .line 1047
    .local v2, "more":Z
    :cond_e
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1049
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_f
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .line 749
    move-object v10, p0

    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    const-string v11, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "Dismiss!"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    if-nez v0, :cond_1

    .line 752
    return v12

    .line 754
    :cond_1
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_2

    .line 755
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z

    .line 758
    :cond_2
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_3

    .line 759
    return v12

    .line 761
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_4

    const-string v0, "Setting mFinishAnimReady = true"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 763
    return v0
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public hasScreenshot()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetRotation()Z
    .locals 1

    .line 1179
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHasSetRotation:Z

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 834
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isRotating()Z
    .locals 2

    .line 838
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kill()V
    .locals 4

    .line 767
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "Kill!"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 769
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2

    .line 770
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": DESTROY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 773
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4

    .line 776
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 777
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_5

    .line 780
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 781
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 783
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6

    .line 784
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 785
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 819
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 820
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 821
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 823
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 824
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 825
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 827
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_9

    .line 828
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 831
    :cond_9
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 193
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 194
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 205
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 209
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 210
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 212
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 214
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 215
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 216
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 218
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 223
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 239
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 243
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 246
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 247
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 248
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 250
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 252
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_2

    .line 253
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    :cond_2
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHasSetRotation:Z

    .line 458
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotation(): rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRotationTimeOut()V
    .locals 1

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHasSetRotation:Z

    .line 1184
    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    .line 1121
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    const-string v1, "WindowManager"

    if-nez v0, :cond_1

    .line 1122
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_0

    const-string v0, "Step: no animations running"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 1124
    return v0

    .line 1127
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_5

    .line 1128
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_2

    const-string v0, "Step: starting start, finish, rotate"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 1155
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1160
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 1161
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 1162
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-nez v2, :cond_5

    .line 1163
    const/16 v2, 0x1090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 1164
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 1168
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method public updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1062
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_0

    .line 1063
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_2

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_2

    .line 1068
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_1

    const-string v0, "Exit animations done, hiding screenshot surface"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_5

    .line 1074
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_4

    .line 1075
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "Frame animations done, hiding black frame"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 1078
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1082
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_8

    .line 1083
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_7

    .line 1084
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_6

    const-string v0, "Frame animations done, hiding exiting frame"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    .line 1087
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1089
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_8

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1095
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_b

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_a

    .line 1097
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_9

    const-string v0, "Frame animations done, hiding entering frame"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_2

    .line 1100
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1103
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_b

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 1110
    invoke-static {p1, v0}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->updateEnteringBlackFrame(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BlackFrame;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 1116
    :cond_b
    :goto_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 1117
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 1118
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 260
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 261
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 262
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 263
    return-void
.end method
